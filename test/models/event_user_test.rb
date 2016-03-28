require 'test_helper'

class EventUserTest < ActiveSupport::TestCase
  test "event_users should be valid" do
    @event_user = event_users(:event_user_1)
    assert @event_user.valid?, @event_user.errors.full_messages
    @event_user = event_users(:event_user_2)
    assert @event_user.valid?, @event_user.errors.full_messages
  end

  test "event_users need a user" do
    @bad_event_user = event_users(:event_user_1).dup
    @bad_event_user.user_id = nil
    assert_not @bad_event_user.valid?
  end

  test "event_users need an event" do
    @bad_event_user = event_users(:event_user_1).dup
    @bad_event_user.event_id = nil
    assert_not @bad_event_user.valid?
  end
end
