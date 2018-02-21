require 'minitest'
require 'minitest/test'
require 'minitest/autorun'
require './lib/reunion'

class ReunionTest < Minitest::Test
  def test_reunion_exists
    reunion = Reunion.new("lake")

    assert_instance_of Reunion, reunion
  end

  def test_reunion_has_location
    reunion = Reunion.new("lake")

    assert_equal "lake", reunion.location
  end

  def test_reunion_has_activity
    reunion = Reunion.new("lake")
    reunion.add_activities("swimming", "jane", 5)

    assert_instance_of Activity, reunion.activities[0]
    assert_equal "swimming", reunion.activities[0].name
    assert_equal 5, reunion.activities[0].cost
  end

  def test_reunion_has_activity
    reunion = Reunion.new("lake")
    reunion.add_activities("swimming", "jane", 5)
    reunion.add_activities("hot springs", "jane", 25)

    assert_equal 30, reunion.total_cost
  end

  def test_reunion_breakdown
    participants = {
        name:          ["Jane", "Megan"],
        amount_paid:    [16, 3]
      }
    reunion = Reunion.new("lake")
    reunion.add_activities("swimming", participants, 31)
    reunion.total_cost

  end

end
