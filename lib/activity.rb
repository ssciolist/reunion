class Activity
  attr_reader :name, :participants, :cost
  def initialize(name, participants = {}, cost)
    @name = name
    @participants = participants
    @cost = cost
  end

  def add_participant(name, amount_paid)
    @participants[:name] << name
    @participants[:amount_paid] << amount_paid
  end
end
