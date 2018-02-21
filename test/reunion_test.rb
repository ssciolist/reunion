require 'minitest'
require 'minitest/test'
require 'minitest/autorun'
require './lib/reunion'

class ReunionTest < Minitest::Test
  def test_reunion_exists
    reunion = Reunion.new("lake", "swimming")

    assert_instance_of Reunion, reunion
  end

  def test_reunion_has_location
    reunion = Reunion.new("lake", "swimming")

    assert_equal "lake", reunion.location
  end

  def test_reunion_has_activity
    reunion = Reunion.new("lake", "swimming")

    assert_instance_of Activity, reunion.activity
    assert_equal "swimming", reunion.activity.name
    assert_equal 0, reunion.activity.cost
  end

  def test_add_activities_to_reunion
  end
end
