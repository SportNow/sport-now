require 'test_helper'

class UserPreferenceTest < ActiveSupport::TestCase
  setup do
    @user_preference = user_preferences(:one)
  end

  test "should normally be valid" do
    assert @user_preference.valid?
  end

  test "should be invalid if no skills" do
    assert_not user_preferences(:no_skills).valid?
  end

  test "should be invalid if too skilled" do
    assert_not user_preferences(:too_skilled).valid?
  end
end
