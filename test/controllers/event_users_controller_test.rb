require 'test_helper'

class EventUsersControllerTest < ActionController::TestCase
  setup do
    @event_user = event_users(:event_user_2)
    sign_in :user, users(:users_001)
  end

  teardown do
    sign_out :user
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event_user" do
    assert_difference('EventUser.count') do
      post :create, event_user: { id: @event_user, event_id: @event_user.event_id }
    end

    assert_redirected_to event_user_path(assigns(:event_user))
  end

  test "should update event_user" do
    patch :update, id: @event_user, event_user: { }
  end

  test "should destroy event_user" do
    assert_difference('EventUser.count', -1) do
      delete :destroy, id: @event_user
    end

    assert_redirected_to event_users_path
  end
end
