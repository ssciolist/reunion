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

  # def test_add_activities_to_reunion
  #   reunion = Reunion.new("lake")
  #   reunion.add_activities("")
  #
  #   assert_instance_of Activity, reunion.activity
  #   assert_equal "swimming", reunion.activity.name
  #   assert_equal 0, reunion.activity.cost
  # end
end
