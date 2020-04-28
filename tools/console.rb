require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



### WRITE YOUR TEST CODE HERE ###
car1 = Car.new(40)
car2 = Car.new(4)
car = Car.new(1)

drivein1 = DriveIn.new("drive in a")
drivein = DriveIn.new("drive in b")
drivein2 = DriveIn.new("drive in c")

movie = MovieScreen.new("witch", 20, drivein2, car1 )
movie = MovieScreen.new("witch", 20, drivein, car2 )
movie = MovieScreen.new("witch", 20, drivein2, car )

binding.pry

0
