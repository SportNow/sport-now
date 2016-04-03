class JoinEventValidator < ActiveModel::Validator
  def validate(event_user)
    begin
      @user = User.find(event_user.user_id)
      @event = Event.find(event_user.event_id)
    rescue ActiveRecord::RecordNotFound => e
       event_user.errors[:user] << "No user or event"
       event_user.errors[:user] << e.to_s
       return
    end
    begin
      @user_preference = UserPreference.find_by_user_id_and_sport_id!(@user.id, @event.sport_id)
    rescue ActiveRecord::RecordNotFound
       event_user.errors[:user] << 'must set a skill level for the event sport'
       return
    end
    if @event.skill_min > @user_preference.skill_level
       event_user.errors[:user] << 'skill is too low (' + @user_preference.skill_level.to_s + '<' + @event.skill_min.to_s + ')'
    end
    if @user_preference.skill_level > @event.skill_max
       event_user.errors[:user] << 'skill is too hight (' + @user_preference.skill_level.to_s + '>' + @event.skill_min.to_s + ')'
    end
    if EventUser.where(event_id: @event.id).where("user_id != #{@user.id}").count == @event.max_seats
       event_user.errors[:event] << 'is full'
    end
  end
end

class EventUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :event
  validates :user_id, presence: true
  validates :event_id, presence: true, uniqueness: {scope: :user_id}
  validates_with JoinEventValidator
end
