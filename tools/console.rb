require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



### WRITE YOUR TEST CODE HERE ###

d1 = DriveIn.new("Drive1")
d2 = DriveIn.new("Drive2")

#   - A movie screen should be initialized with a movie title as a string, capacity (as an integer), 
# and a `drive_in` object.

s1 = MovieScreen.new("Star Wars", 20, d1)
s2 = MovieScreen.new("John Wick", 20, d1)
s3 = MovieScreen.new("Frozen", 20, d2)
s4 = MovieScreen.new("Cats", 20, d2)


c1 = Car.new(1, "Star Wars")
c2 = Car.new(2, "Frozen")
c3 = Car.new(3, "John Wick")


binding.pry

0
