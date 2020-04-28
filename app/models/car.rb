class Car
  attr_accessor :passenger_count #allows a reader method that returns the number of passengers in a car and allows passenger_count to be changed after initialization
  @@all = []
  def initialize(passenger_count)
    @passenger_count = passenger_count
    Car.all << self
  end

  def self.all
    @@all
  end
  
  def current_movie_screen
    MovieScreen.all.find {|screen| screen.car == self}
  end

  def current_movie_screen=(movie_title, capacity, drive_in)
    MovieScreen.new(movie_title, capacity, drive_in, self)
  end
end


# - `Car#current_movie_screen`
#   - Returns the current movie screen that a particular car is associated with.
# - `Car#current_movie_screen=`
#   - Assigns a movie screen object to a particular car to indicate which movie screen that car is currently at.
#   - **Note:** this will happen _after_ a car has already been created.