require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'
require 'pry'

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

  def test_activity_costs_can_be_split
    participants = {
        name:          ["Jane", "Megan"],
        amount_paid:    [16, 3]
      }
    activity = Activity.new("hiking", participants, 20)

    activity.split_cost

    assert_equal 10, activity.split_cost
  end

  def test_activity_participants_know_what_they_owe
    # skip
    participants = {
        name:          ["Jane", "Megan"],
        amount_paid:    [16, 3]
      }
    activity = Activity.new("hiking", participants, 20)

    activity.money_owed("Jane")
    activity.money_owed("Megan")

    assert_equal -6, activity.money_owed("Jane")
    assert_equal 7, activity.money_owed("Megan")
  end
end
