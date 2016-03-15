class Sport < ActiveRecord::Base
  belongs_to :image
  validates :name, presence: true
  validates :description, presence: true
end
