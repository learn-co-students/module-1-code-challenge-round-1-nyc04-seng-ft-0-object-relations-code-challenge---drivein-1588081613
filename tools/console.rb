require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



### WRITE YOUR TEST CODE HERE ###

DI1 = DriveIn.new("kyle's drivein")

MS1 = MovieScreen.new('movie1',50,DI1)

C1 =Car.new(4)

binding.pry

0
