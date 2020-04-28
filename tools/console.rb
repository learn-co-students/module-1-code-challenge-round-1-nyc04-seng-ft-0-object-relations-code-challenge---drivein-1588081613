require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Cars belong to MovieScreens which belong to DriveIns. 
# Cars keep track of their MovieScreens. Ask a car which movie screen it belongs to.
# MovieScreens keep track of their DriveIns.


### WRITE YOUR TEST CODE HERE ###

zoomcinema = DriveIn.new("Zoom Cinema")
zoomcinema.name # => Zoom Cinema

andrews = DriveIn.new("Andrew's")
andrews.name # => Andrew's

screen1 = MovieScreen.new({movie_title: "Hidden Fortress", capacity: 2, drive_in: andrews})
screen2 = MovieScreen.new({movie_title: "Some Like It Hot", capacity: 10, drive_in: zoomcinema})
screen3 = MovieScreen.new({movie_title: "Parasite", capacity: 10, drive_in: zoomcinema})

screen1.movie_title
screen1.capacity
screen1.drive_in
MovieScreen.all

car1 = Car.new(2, screen1)
car1.passenger_count # => 2
car1.passenger_count = 1
car1.passenger_count #=> 1

car2 = Car.new(5, screen2)
car3 = Car.new(5, screen3)
Car.all

#Object Relationship Methods

car2.current_movie_screen 
car2.current_movie_screen = screen3

screen1.cars
screen2.cars

zoomcinema.screens # => screen2, screen3
andrews.screens # => screen1

#Aggregate Methods

screen1.number_of_viewers
screen1.at_capacity?
screen1.available_spots
screen1.add_car(car2)

zoomcinema.whats_playing #=> ["Some Like It Hot", "Parasite"]
zoomcinema.full_house?

binding.pry

0
