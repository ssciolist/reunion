require 'pry'
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

  def split_cost
    @cost / @participants[:name].length
  end

  def money_owed(person)

    position = @participants[:name].index(person)
    split_cost - (@participants[:amount_paid][position])

  end
end
