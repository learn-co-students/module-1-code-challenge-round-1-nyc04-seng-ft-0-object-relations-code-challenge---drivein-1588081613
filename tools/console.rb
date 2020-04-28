require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



### WRITE YOUR TEST CODE HERE ###

# Create DriveIn/s
drivein1 = DriveIn.new("SuperPlex")
drivein2 = DriveIn.new("MegaScreen")
drivein3 = DriveIn.new("BigEyes")

# Create MovieScreen/s
moviescreen1 = MovieScreen.new("Yo", 100, drivein1)
moviescreen2 = MovieScreen.new("Sup", 200, drivein2)
moviescreen3 = MovieScreen.new("Hey", 300, drivein3)

# Create Car/s
car1 = Car.new(3, drivein1, moviescreen1)
car2 = Car.new(2, drivein2, moviescreen2)
car3 = Car.new(4, drivein3, moviescreen3)

binding.pry

0
