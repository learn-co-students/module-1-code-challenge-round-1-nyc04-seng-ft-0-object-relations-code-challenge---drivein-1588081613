require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



### WRITE YOUR TEST CODE HERE ###

#2 DriveIn
mcd = DriveIn.new("McD")
kfc = DriveIn.new("KFC")

#3 movie screens
ms1 = MovieScreen.new("Buta", 1, mcd)
ms2 = MovieScreen.new("Ruru", 5, mcd)
ms3 = MovieScreen.new("Clan", 3, kfc)

#2 cars
s = Car.new(5)
b = Car.new(20)
t = Car.new(2)



binding.pry

0
