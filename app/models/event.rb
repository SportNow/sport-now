class Event < ActiveRecord::Base
  # belongs_to :image
  belongs_to :sport
  belongs_to :user
  has_many :users, through: :event_users

  validates :sport_id, presence: true
  validates :user_id, presence: true
  mount_uploader :image, ImageUploader

  def self.search(search)
    where("name LIKE ?", "%#{search}%")
  end

  def is_joined(user)
    EventUser.find_by(:event_id => self.id, :user_id => user.id)
  end
end
