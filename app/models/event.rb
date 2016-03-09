class Event < ActiveRecord::Base
  belongs_to :image
  belongs_to :sport
  belongs_to :user
  has_many :users, through: :event_users
end
