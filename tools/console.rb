require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



### WRITE YOUR TEST CODE HERE ###

# car(6 total, 2 per movie screen):

car1 = Car.new(2)
car2 = Car.new(3)
car3 = Car.new(2)
car4 = Car.new(3)
car5 = Car.new(2)
car6 = Car.new(3)

# drive_in(only 1):

drive_in1 = DriveIn.new("The Flatiron DriveIn") 

# movie_screens (3):

movie_screen1 = MovieScreen.new("Mod 1: The Movie", 10, drive_in1, car1)
movie_screen2 = MovieScreen.new("Mod 2: The Movie", 10, drive_in1, car3)
movie_screen3 = MovieScreen.new("Mod 3: The Movie", 10, drive_in1, car5)


binding.pry

0
