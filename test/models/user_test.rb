require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "users should be valid" do
    assert users(:users_001).valid?
    assert users(:users_002).valid?
  end
end
