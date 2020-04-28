require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

car1=Car.new(230)
car2=Car.new(340)
car3=Car.new(450)
car4=Car.new(560)
drivein1=DriveIn.new("Awesome")
drivein2=DriveIn.new("Awesome_place")
drivein3=DriveIn.new("Awesome_place_to_be")
drivein4=DriveIn.new("Awesome_place_to_be_living")

moviescreen1=MovieScreen.new("Fight Club",340,drivein1,car1)
moviescreen2=MovieScreen.new("Argo",360,drivein2,car2)
moviescreen3=MovieScreen.new("E.T",380,drivein3,car3)
moviescreen4=MovieScreen.new("Oceans Eleven",230,drivein4,car4)
moviescreen5=MovieScreen.new("Dirty Dancing",130,drivein2,car2)
moviescreen6=MovieScreen.new("Mars Attacks",530,drivein4,car3)

### WRITE YOUR TEST CODE HERE ###

binding.pry

0
