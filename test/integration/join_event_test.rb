require 'test_helper'

class JoinEventTest < ActionDispatch::IntegrationTest
  setup do
    https!
    @user = users(:join_event_test_user)
    do_sign_in
  end

  teardown do
    do_sign_out
    https!(false)
  end

  test "viewing a joinable event should display a link to /events/:id/join" do
    @event = events(:joinable_event_1)
    get "/events/" + @event.id.to_s
    assert_response :success
    assert_select "a[href=?]", "/events/" + @event.id.to_s + "/join"
  end

  test "joining an event while logged out should fail" do
    @event = events(:joinable_event_1)
    do_sign_out
    do_join_event
    assert_redirected_to "/users/sign_in"
    do_sign_in
  end

  test "joining a past event should fail" do
    @event = events(:past_event_1)
    assert_no_difference('EventUser.count') do
      do_join_event
    end
  end

  test "joining an event with the wrong skill should fail" do
    assert_cannot_join_event :difficult_event_1
  end

  test "joining a full event should fail" do
    assert_cannot_join_event :full_event_1
  end

  test "joining a joined event should fail" do
    assert_cannot_join_event :joined_event_1
  end

  test "joining a joinable event should work" do
      @event = events(:joinable_event_1)
      assert_difference('EventUser.count') do
        do_join_event
      end
  end

  private

    def do_sign_in
      post_via_redirect '/users/sign_in', 'user[email]' => @user.email, 'user[password]' => 'password!'
    end

    def do_sign_out
      delete "/users/sign_out"
    end

    def do_join_event
      post "/events/" + @event.id.to_s + "/join"
    end

    def assert_cannot_join_event(event)
      @event = events(event)
      assert_no_difference('EventUser.count') do
        do_join_event
      end
    end
end
