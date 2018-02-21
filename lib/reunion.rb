class Reunion
  attr_reader :location, :activity
  def initialize(location, activity)
    @location = location
    @activity = Activity.new(activity)
  end
end
