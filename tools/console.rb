require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

car1 = Car.new(2)
car2 = Car.new(4)
car3 = Car.new(3)
drive_in1 = DriveIn.new("Abu")
drive_in2 = DriveIn.new("Talha")
movie_screen1 = MovieScreen.new("Spider Man", 10, drive_in1, car1)
movie_screen2 = MovieScreen.new("Hulk", 15, drive_in1, car2)
movie_screen3 = MovieScreen.new("Toy story", 10, drive_in2, car3)


### WRITE YOUR TEST CODE HERE ###

binding.pry

0
