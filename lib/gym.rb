class Gym
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def memberships
    # memberships = []
    # Membership.all.each do |membership| 
    #   if membership.gym == self
    #     memberships << membership
    #   end
    # end
    # memberships
    Membership.all.select { |membership| membership.gym == self }
  end

  def lifters
    # lifters = []
    # self.memberships.each do |membership| 
    #   lifters << membership.lifter
    # end
    # lifters
    self.memberships.map { |membership| membership.lifter }
  end

  def lifter_names
    # lifter_names = []
    # self.lifters.each do |lifter|
    #   lifter_name << lifter.name
    # end
    # lifter_names
    self.lifters.map { |lifter| lifter.name }
    # self.memberships.map { |membership| membership.lifter.name }  <-- this would also work
  end

  def combined_lift
    # all_lifts = []
    # self.lifters.each do |lifter|
    #   all_lifts << lifter.lift_total
    # end
    # all_lifts.sum
    self.lifters.map { |lifter| lifter.lift_total }.sum
  end

  def self.all
    @@all
  end

end
