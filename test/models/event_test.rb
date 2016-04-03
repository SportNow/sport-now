require 'test_helper'

class EventTest < ActiveSupport::TestCase
  setup do
    @main_event = events(:event_one)
  end

  test "events should be valid" do
    assert events(:event_one).valid?
    assert events(:event_two).valid?
  end

  test "events should have a user" do
    @bad_event = @main_event.dup
    @bad_event.user_id = nil
    assert_not @bad_event.valid?
  end

  test "events should have a sport" do
    @bad_event = @main_event.dup
    @bad_event.sport_id = nil
    assert_not @bad_event.valid?
  end
end
