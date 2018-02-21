require './lib/activity'

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

  def total_cost
    @activities.reduce(0) do |sum, activity|
      sum += activity.cost
      sum
    end
  end

  def breakdown
    participant_payment = @activities.group_by do |activity|
      activity.money_owed(participants[:name])
    end
  end
end
