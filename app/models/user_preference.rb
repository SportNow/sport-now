class UserPreference < ActiveRecord::Base
  belongs_to :user
  belongs_to :sport
  validates :skill_level, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }
  validates :sport_id, uniqueness: {:scope => :user_id}
  self.per_page = 1
end
