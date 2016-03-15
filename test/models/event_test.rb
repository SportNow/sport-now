require 'test_helper'

class EventTest < ActiveSupport::TestCase
  test "events should be valid" do
    assert events(:event_one).valid?
    assert events(:event_two).valid?
  end
end
