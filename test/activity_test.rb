require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'

class ActivityTest < Minitest::Test
  def test_activity_exists
    participants = {
        name:          "Jane",
        amount_paid:    16
      }
    activity = Activity.new("hiking", participants, 20)

    assert_instance_of Activity, activity
  end

  def test_activity_has_a_name
    participants = {
        name:          "Jane",
        amount_paid:    16
      }
    activity = Activity.new("hiking", participants, 20)

    assert_equal "hiking", activity.name
  end

  def test_activity_has_participants
    participants = {
        name:          "Jane",
        amount_paid:    16
      }
    activity = Activity.new("hiking", participants, 20)

    assert_equal "Jane", activity.participants[:name]

  end

  def test_participants_can_be_added_to_activity
    participants = {
        name:          ["Jane"],
        amount_paid:    [16]
      }
    activity = Activity.new("hiking", participants, 20)

    activity.add_participant("Megan", 5)

    assert_equal "Jane", activity.participants[:name][0]
    assert_equal "Megan", activity.participants[:name][1]
  end

  def test_activity_has_total_cost
    participants = {
        name:          ["Jane"],
        amount_paid:    [16]
      }
    activity = Activity.new("hiking", participants, 20)

    assert_equal 20, activity.cost
  end
end
