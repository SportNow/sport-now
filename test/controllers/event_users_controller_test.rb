require 'test_helper'

class EventUsersControllerTest < ActionController::TestCase
  setup do
    @event_user = event_users(:event_user_1)
    sign_in :user, users(:users_001)
  end

  teardown do
    sign_out :user
  end

  test "should create event_user" do
    assert_difference('EventUser.count') do
      post :create, event_user: { event_id: 2 }
    end
  end

  test "should destroy event_user" do
    assert_difference('EventUser.count', -1) do
      delete :destroy, id: @event_user
    end
  end
end
