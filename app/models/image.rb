class AssetValidator < ActiveModel::Validator
  def validate(record)
    unless Rails.application.assets.find_asset record.url
      record.errors[:url] << 'url must point to an asset!'
    end
  end
end

class Image < ActiveRecord::Base
  include ActiveModel::Validations
  validates_with AssetValidator
end
