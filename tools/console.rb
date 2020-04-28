require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



### WRITE YOUR TEST CODE HERE ###

zoomcinema = DriveIn.new("Zoom Cinema")
zoomcinema.name # => Zoom Cinema

andrews = DriveIn.new("Andrew's")
andrews.name # => Andrew's

car1 = Car.new(2)
car1.passenger_count # => 2
car1.passenger_count = 3
car1.passenger_count #=> 3

car2 = Car.new(5)
car3 = Car.new(5)
Car.all

screen1 = MovieScreen.new({movie_title: "Hidden Fortress", capacity: 2, drive_in: andrews, cars: [car1]})
screen2 = MovieScreen.new({movie_title: "Some Like It Hot", capacity: 10, drive_in: zoomcinema, cars: [car2, car3]})
screen3 = MovieScreen.new({movie_title: "Parasite", capacity: 10, drive_in: zoomcinema, cars: [car2]})

screen1.movie_title
screen1.capacity
screen1.drive_in
MovieScreen.all

#Object Relationship Methods

car2.current_movie_screen
car2.current_movie_screen = screen1

screen1.cars
screen2.cars

zoomcinema.screens # => screen2, screen3
andrews.screens # => screen1

#Aggregate Methods

zoomcinema.whats_playing #=> ["Some Like It Hot", "Parasite"]

binding.pry

0
