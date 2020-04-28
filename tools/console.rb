require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


drivein1 = DriveIn.new("Movies for all")
drivein2 = DriveIn.new("Come and get your cinema on")
drivein3 = DriveIn.new("Movie Party!")
movie1 = MovieScreen.new("The Incredibles", 100, drivein1)
movie2 = MovieScreen.new("Extraction", 100, drivein2)
movie3 = MovieScreen.new("The Avengers", 100, drivein3)
car1 = Car.new(5)
car2 = Car.new(3)
car3 = Car.new(2)


### WRITE YOUR TEST CODE HERE ###

binding.pry

0
