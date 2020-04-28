require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

car1 = Car.new(4)
car2 = Car.new(3)
car3 = Car.new(1)
car4 = Car.new(4)


drivein1 = DriveIn.new("AMC")
drivein2 = DriveIn.new("Regal")
drivein3 = DriveIn.new("Movie Tavern")

screen1 = MovieScreen.new("Wanted", 10, drivein1)
screen2 = MovieScreen.new("Kill Bill", 5, drivein1)
screen3 = MovieScreen.new("Taken", 5, drivein1)


screen3 = MovieScreen.new("Kill Bill", 20, drivein2)




### WRITE YOUR TEST CODE HERE ###

binding.pry


