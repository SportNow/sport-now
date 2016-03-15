require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  setup do
    @event = events(:event_one)
    sign_in :user, users(:users_001)
  end

  teardown do
    sign_out :user
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post :create, event: { address: @event.address, datetime: @event.datetime, description: @event.description, headline: @event.headline, image_id: @event.image_id, lat: @event.lat, lng: @event.lng, max_seats: @event.max_seats, skill_max: @event.skill_max, skill_min: @event.skill_min, sport_id: @event.sport_id, is_competitive: @event.is_competitive, user_id: @event.user_id }
    end

    assert_redirected_to event_path(assigns(:event))
  end

  test "should show event" do
    get :show, id: @event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event
    assert_response :success
  end

  test "should update event" do
    patch :update, id: @event, event: { address: @event.address, datetime: @event.datetime, description: @event.description, headline: @event.headline, image_id: @event.image_id, lat: @event.lat, lng: @event.lng, max_seats: @event.max_seats, skill_max: @event.skill_max, skill_min: @event.skill_min, sport_id: @event.sport_id, is_competitive: @event.is_competitive, user_id: @event.user_id }
    assert_redirected_to event_path(assigns(:event))
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete :destroy, id: @event
    end

    assert_redirected_to events_path
  end
end
