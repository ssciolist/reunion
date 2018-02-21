require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'

class ActivityTest < Minitest::Test
  def test_activity_exists
    activity = Activity.new("hiking")

    assert_instance_of Activity, activity
  end

  def test_activity_has_a_name
    activity = Activity.new("hiking")

    assert_equal "hiking", activity.name
  end

  def test_activity_has_participants
  end

  def test_participants_can_be_added_to_activity
  end

  def test_activity_has_total_cost
  end
end
