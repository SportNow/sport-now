class Sport < ActiveRecord::Base
  # belongs_to :image
  mount_uploader :image, ImageUploader
  validates :name, presence: true
  validates :description, presence: true
end
