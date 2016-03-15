require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "normal users should be valid" do
    assert users(:users_001).valid?
    assert users(:users_002).valid?
  end

  test "users can be born several years ago" do
    assert users(:user_just_old_enough).valid?
  end

  test "user should not be born too  recently" do
    assert_not users(:user_too_young).valid?
  end
end
