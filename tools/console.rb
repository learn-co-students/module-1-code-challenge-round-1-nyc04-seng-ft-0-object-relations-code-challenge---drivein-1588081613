require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

c1 = Car.new(2)
c2 = Car.new(4)

d1 = DriveIn.new("Alamo")
d2 = DriveIn.new("The Burns")

MovieScreen.new("The 5th Element", 20, d1)
MovieScreen.new("My Best Friends Wedding", 18, d2)


### WRITE YOUR TEST CODE HERE ###

binding.pry

0
