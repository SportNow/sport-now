require 'test_helper'

class SportTest < ActiveSupport::TestCase
  test "sports should be valid" do
    assert sports(:basketball).valid?
    assert sports(:soccer).valid?
  end

  test "sports should have a name" do
    @bad_sport = sports(:soccer).dup
    @bad_sport.name = ''
    assert_not @bad_sport.valid?
    @bad_sport.name = '     '
    assert_not @bad_sport.valid?
  end

  test "sports should have a description" do
    @bad_sport = sports(:soccer).dup
    @bad_sport.description = ''
    assert_not @bad_sport.valid?
    @bad_sport.description = '    '
    assert_not @bad_sport.valid?
  end
end
