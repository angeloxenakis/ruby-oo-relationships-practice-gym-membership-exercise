# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

lifter1 = Lifter.new("James", 200)
lifter2 = Lifter.new("Jill", 300)

gym1 = Gym.new("24 Hour Fitness")
gym2 = Gym.new("Gold's Gym")

Membership.new(40, gym1, lifter1)
Membership.new(20, gym2, lifter1)
Membership.new(20, gym2, lifter2)



binding.pry

puts "Gains!"
