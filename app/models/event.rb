class Event < ActiveRecord::Base
  # belongs_to :image
  belongs_to :sport
  belongs_to :user
  has_many :event_users
  has_many :users, through: :event_users

  validates :sport_id, presence: true
  validates :user_id, presence: true
  mount_uploader :image, ImageUploader

  def self.search(params)

    events = Event.all

    if (params[:sport_id] != "")
      events = events.where(:sport_id=>params[:sport_id])
    end

    if params[:is_competitive]
      events = events.where(:is_competitive=>params[:is_competitive])
    end

    return events

  end

  def is_joined(user)
    EventUser.find_by(:event_id => self.id, :user_id => user.id)
  end
end
