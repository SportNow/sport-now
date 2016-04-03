class Event < ActiveRecord::Base
  belongs_to :image
  belongs_to :sport
  belongs_to :user
  has_many :users, through: :event_users

  validates :sport_id, presence: true
  validates :user_id, presence: true

  def image_url
    if image then image.url else '' end
  end
end
