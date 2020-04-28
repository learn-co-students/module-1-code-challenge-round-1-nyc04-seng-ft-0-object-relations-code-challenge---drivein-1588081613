require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



### WRITE YOUR TEST CODE HERE ###

mahonig = DriveIn.new("Mahonig Drive In")
mahonig.name
rosiescar = Car.new(2)
jakescar = Car.new(4)
mahonig_screen = MovieScreen.new("Clueless", 50, mahonig, rosiescar)
jakescar.current_movie_screen('Cant Hardly Wait', 10, mahonig) 

MovieScreen.all_screens #display all screens. 



binding.pry

0
