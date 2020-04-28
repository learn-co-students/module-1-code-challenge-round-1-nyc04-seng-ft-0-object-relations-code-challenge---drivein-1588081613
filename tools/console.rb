require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

car1 = Car.new(2)
car2 = Car.new(4)
car3 = Car.new(3)
drive_in1 = DriveIn.new("Abu")
drive_in2 = DriveIn.new("Talha")
drive_in3 = DriveIn.new("Zar")
movie_screen1 = MovieScreen.new("Spider Man", 3, drive_in1)
movie_screen2 = MovieScreen.new("Hulk", 5, drive_in2)
movie_screen3 = MovieScreen.new("Toy story", 4, drive_in3)


### WRITE YOUR TEST CODE HERE ###

binding.pry

0
