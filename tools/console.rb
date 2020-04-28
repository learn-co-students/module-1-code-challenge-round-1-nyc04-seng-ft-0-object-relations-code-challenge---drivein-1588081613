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
jakescar.current_movie_screen
mahonig_screen.at_capacity?
MovieScreen.all_screens #display all screens. 

#im unable to get some of my methods to work. 
# ive drawn the model about 5 times and it keeps telling me, along with the language in the readme that the moviescreen is the join model.
#this even happened in our labs (a waiter has many customers -through- the meals). however, the moviescreen needs information about its instances 




binding.pry

0
