require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



### WRITE YOUR TEST CODE HERE ###

DI1 = DriveIn.new("kyle's drivein")
DI2 = DriveIn.new("the very cool drivein")

MS1 = MovieScreen.new('movie1',50,DI1)
MS2 = MovieScreen.new('movie2',50,DI1)
MS3 = MovieScreen.new('movie3',100,DI2)

C1 =Car.new(4)
C2 =Car.new(3)
C3 =Car.new(50)

C1.current_movie_screen = MS1







binding.pry
0