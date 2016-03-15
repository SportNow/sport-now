require 'test_helper'

class SportTest < ActiveSupport::TestCase
  test "sports should be valid" do
    assert sports(:basketball).valid?
    assert sports(:soccer).valid?
  end
end
