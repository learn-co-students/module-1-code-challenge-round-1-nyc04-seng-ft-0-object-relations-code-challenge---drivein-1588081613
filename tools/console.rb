require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



### WRITE YOUR TEST CODE HERE ###
car1 = Car.new(150)
car2 = Car.new(5)
drivein1 = DriveIn.new("a drive in")
drivein1 = DriveIn.new("another drive-in")
screen1 = MovieScreen.new("jaws", 99, drivein1)




binding.pry

0
