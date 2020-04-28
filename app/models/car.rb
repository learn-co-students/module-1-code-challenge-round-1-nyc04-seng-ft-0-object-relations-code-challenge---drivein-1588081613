require 'pry'

class Car

  attr_accessor :passenger_count

  @@all = []

  def initialize(passenger_count)
    @passenger_count = passenger_count
    @@all << self
  end

  def self.all
    @@all
  end
  # binding.pry
  def passenger_count
    @passenger_count
  end

  def current_movie_screen
    MovieScreen.all.select { |screen| screen.car == self}
  end

end

# #### Car

# - `Car#current_movie_screen`
#   - Returns the current movie screen that a particular car is associated with.
# - `Car#current_movie_screen=`
#   - Assigns a movie screen object to a particular car to indicate which movie screen that car is currently at.
#   - **Note:** this will happen _after_ a car has already been created.



