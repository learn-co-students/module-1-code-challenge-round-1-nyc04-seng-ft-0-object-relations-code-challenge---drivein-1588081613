#belongs to one movie screen
#belongs to one drive in


# - `Car#initialize(passenger_count)`
#   - A car should be initialized with a `passenger_count` (as an integer).
#   - the passenger count **can** be changed after the `Car` is initialized
# - `Car#passenger_count`
#   - Returns the number of passengers in the car.
# - `Car.all`
#   - Returns an array of all car instances that have been created.



class Car
  attr_accessor :passenger_count, :movie_title, :current_movie_screen
  @@all = []
  def initialize(passenger_count, movie_title)
    @passenger_count = passenger_count
    @movie_title = movie_title
    Car.all << self
  end

  def self.all
    @@all
  end

# - `Car#current_movie_screen`
#   - Returns the current movie screen that a particular car is associated with.
# - `Car#current_movie_screen=` (needs reader)
#   - Assigns a movie screen object to a particular car to indicate which movie screen 
# that car is currently at. (needs writer)
#   - **Note:** this will happen _after_ a car has already been created.

# need to initialize with a movie argument to know what movie the car is watching
#need to tell movie_screen object which car is associated with it
  # def movie
  #   MovieScreen.all.select do |movie|



  def current_movie_screen
    MovieScreen.all.select do |movie|
      if movie.movie_title == self.movie_title
        MovieScreen.movie_title
      end
    end
  end



end
