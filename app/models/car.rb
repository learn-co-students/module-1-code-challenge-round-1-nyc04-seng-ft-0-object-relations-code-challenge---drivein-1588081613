class Car
  attr_reader :passenger_count

  @@all = []

  def initialize(passenger_count)
    @passenger_count = passenger_count
    Car.all << self 
  end

  def all_cars 
    @@all 
  end 

  def current_movie_screen
    all_screens.select |current_movie_screen|
      current_movie_screen if car == self 
    end 
  end 

  

end

# Car
# Car#initialize(passenger_count)
# A car should be initialized with a passenger_count (as an integer).
# the passenger count can be changed after the Car is initialized
# Car#passenger_count
# Returns the number of passengers in the car.
# Car.all
# Returns an array of all car instances that have been created.

# Car
# Car#current_movie_screen
# Returns the current movie screen that a particular car is associated with.
# Car#current_movie_screen=
# Assigns a movie screen object to a particular car to indicate which movie screen that car is currently at.
# Note: this will happen after a car has already been created.