require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



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

car1 = Car.new(2)
car1.passenger_count # => 2
car1.passenger_count = 3
car1.passenger_count #=> 3

car2 = Car.new(10)
car3 = Car.new(5)
car4 = Car.new(5)
Car.all

#Object Relationship Methods

#Aggregate Methods

zoomcinema.whats_playing #=> ["Some Like It Hot", "Parasite"]

binding.pry

0
