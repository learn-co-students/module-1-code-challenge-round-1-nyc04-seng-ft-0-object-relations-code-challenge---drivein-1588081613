require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

car1 = Car.new(4)
car2 = Car.new(2)
car3 = Car.new(3)

drivein1 = DriveIn.new("Beach drive-in")
drivein2 = DriveIn.new("Forest drive-in")
drivein3 = DriveIn.new("Desert drive-in")

moviescreen1 = MovieScreen.new("Titanic", 30, drivein1, car1)
moviescreen2 = MovieScreen.new("Hitch", 50, drivein2, car2)
moviescreen3 = MovieScreen.new("Austin Powers", 30, drivein1, car3)


### WRITE YOUR TEST CODE HERE ###

binding.pry

0
