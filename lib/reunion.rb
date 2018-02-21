class Reunion
  attr_reader :location, :activities
  def initialize(location)
    @location = location
    @activities = []
  end

  def add_activities(activity_name, participants, cost)
    activity = Activity.new(activity_name, participants, cost)
    @activities << activity
  end
end
