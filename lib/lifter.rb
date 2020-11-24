class Lifter
  attr_reader :name, :lift_total 
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def memberships
    # memberships = []
    # Membership.all.each do |membership| 
    #   if membership.lifter == self
    #     memberships << membership
    #   end
    # end
    # memberships
    Membership.all.select { |membership| membership.lifter == self }
  end

  def gyms
    # gyms = []
    # self.memberships.each do |membership| 
    #   gyms << membership.gym
    # end
    # gyms
    self.memberships.map { |membership| membership.gym }
  end

  # def total_cost
  #   total_cost = 0
  #   self.memberships.each do |membership|
  #     total_cost = total_cost + membership.cost
  #   end
  #   total_cost
    self.memberships.map { |membership| membership.cost }.sum
  end

  def create_membership(gym, cost)
    Membership.new(cost, gym, self)
  end

  def self.all
    @@all
  end

  def self.average_lift
    # all_lifter_total = 0
    # Lifter.all.each do |lifter| 
    #   all_lifter_total = all_lifter_total + lifter.lift_total
    # end
    # lifter_average = all_lifter_total / Lifter.all.length
    # lifter_average
    Lifter.all.map { |lifter| lifter.lift_total }.sum / Lifter.all.length
  end

end
