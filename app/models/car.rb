class Car

#   - the passenger count **can** be changed after the `Car` is initialized
  attr_accessor :passenger_count, :drive_in, :movie_screen
  @@all = []

# - `Car#initialize(passenger_count)`
#   - A car should be initialized with a `passenger_count` (as an integer).
  def initialize(passenger_count, drive_in, movie_screen)
    @passenger_count = passenger_count
    @drive_in = drive_in
    @movie_screen = movie_screen
    Car.all << self
  end

# - `Car#passenger_count`
#   - Returns the number of passengers in the car.
  def self.passenger_count
    passenger_count
  end

# - `Car.all`
#   - Returns an array of all car instances that have been created.
  def self.all
    @@all
  end

# Object Relationship Methods
# - `Car#current_movie_screen`
#   - Returns the current movie screen that a particular car is associated with.
  # def self.current_movie_screen
  #     movie_screen
  # end

# - `Car#current_movie_screen=`
#   - Assigns a movie screen object to a particular car to indicate which movie screen that car is currently at.
#   - **Note:** this will happen _after_ a car has already been created.

end
