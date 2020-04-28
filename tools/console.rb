require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



### WRITE YOUR TEST CODE HERE ###
d1 = DriveIn.new("theater1")
d2 = DriveIn.new("theater2")
d3 = DriveIn.new("theater3")

ms1 = MovieScreen.new(10, "Home Alone", d1)
ms2 = MovieScreen.new(20, "Avengers", d1)
ms3 = MovieScreen.new(10, "Jumangi", d2)
ms4 = MovieScreen.new(10, "Wreck It Ralph", d3)
binding.pry

0
