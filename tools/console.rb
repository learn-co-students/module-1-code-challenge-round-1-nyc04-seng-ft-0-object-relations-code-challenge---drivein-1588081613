require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

car1 = Car.new(4)
car2 = Car.new(2)
car3 = Car.new(1)
car4 = Car.new(2)


drivein1 = DriveIn.new("AMC")
drivein2 = DriveIn.new("Regal")
drivein3 = DriveIn.new("Movie Tavern")

screen1 = MovieScreen.new("Wanted", 50, drivein1)



### WRITE YOUR TEST CODE HERE ###

binding.pry


