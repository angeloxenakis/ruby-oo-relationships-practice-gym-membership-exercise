class Gym
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def memberships
    Membership.all.select { |membership| membership.gym == self }
  end

  def lifters
    self.memberships.map { |membership| membership.lifter }
  end

  def lifter_names
    self.lifters.map { |lifter| lifter.name }
    # self.memberships.map { |membership| membership.lifter.name }
  end

  def combined_lift
    self.lifters.map { |lifter| lifter.lift_total }.sum
  end

  def self.all
    @@all
  end

end
