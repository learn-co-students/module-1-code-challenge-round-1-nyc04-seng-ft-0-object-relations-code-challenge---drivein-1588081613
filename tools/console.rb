require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



### WRITE YOUR TEST CODE HERE ###
drive_in1 = DriveIn.new("Twin Peaks")
drive_in2 = DriveIn.new("Mega Screens")

car1 = Car.new(2)
car2 = Car.new(4)
car3 = Car.new(6)
car4 = Car.new(8)
car5 = Car.new(2)
car6 = Car.new(4)
car7 = Car.new(6)
car8 = Car.new(8)
car9 = Car.new(2)

movie_screen1 = MovieScreen.new("Circus of Books", 5, drive_in1)
movie_screen2 = MovieScreen.new("Tiger King", 5, drive_in1)
movie_screen3 = MovieScreen.new("Lego Movie", 50, drive_in2)
movie_screen4 = MovieScreen.new("Bridesmaids", 50, drive_in2)

car1.current_movie_screen = movie_screen1
car2.current_movie_screen = movie_screen1
car3.current_movie_screen = movie_screen2
car4.current_movie_screen = movie_screen2
car5.current_movie_screen = movie_screen3
car6.current_movie_screen = movie_screen3
car7.current_movie_screen = movie_screen4
car8.current_movie_screen = movie_screen4


binding.pry

0
