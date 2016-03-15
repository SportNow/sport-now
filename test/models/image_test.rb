require 'test_helper'

class ImageTest < ActiveSupport::TestCase
  test "valid images should be valid" do
    @img = images(:image_baseball)
    assert Rails.application.assets.find_asset(@img.url)
    assert @img.valid?
    @img = images(:image_basketball)
    assert Rails.application.assets.find_asset(@img.url)
    assert @img.valid?
  end

  # TODO: validate non-asset images
  #test "invalid images should be invalid" do
  #  @badimg = images(:image_invalid)
  #  assert_not Rails.application.assets.find_asset(@badimg.url)
  #  assert_not @badimg.valid?
  #end
end
