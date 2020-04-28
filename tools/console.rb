require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

require 'pry'

drive_in1 = DriveIn.new("welcomemovies")

car3 = Car.new(3)
car4 = Car.new(4)
car5 = Car.new(5)
car2 = Car.new(6)

movie_screen1 = MovieScreen.new("hats", 10, drive_in1)
movie_screen2 = MovieScreen.new("scarves", 10, drive_in1)
movie_screen3 = MovieScreen.new("gloves", 10, drive_in1)

### WRITE YOUR TEST CODE HERE ###

binding.pry

puts "the end"
