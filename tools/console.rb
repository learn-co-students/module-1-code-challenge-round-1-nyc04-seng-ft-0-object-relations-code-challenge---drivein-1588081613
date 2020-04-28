require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



### WRITE YOUR TEST CODE HERE ###
d1 = DriveIn.new("theater1")
d2 = DriveIn.new("theater2")
d3 = DriveIn.new("theater3")

c1 = Car.new(4)
c2 = Car.new(3)
c3 = Car.new(3)
c4 = Car.new(4)
c5 = Car.new(4)
c6 = Car.new(4)

ms1 = MovieScreen.new("Home Alone", 10, d1, c1)
ms2 = MovieScreen.new("Avengers", 20, d1, c2)
ms3 = MovieScreen.new("Jumangi", 10, d1, c3)
ms4 = MovieScreen.new("Wreck It Ralph", 10, d3, c4)
ms5 = MovieScreen.new("Home Alone", 10, d2, c5)
ms6 = MovieScreen.new("Avengers", 20, d1, c6)

binding.pry

0
