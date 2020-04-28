class MovieScreen
  attr_reader :movie_title, :capacity, :drive_in, :car   

  @@all = []

  def initialize(movie_title, capacity, drive_in, car)
    # movie_title, string
    # capacity, integer
    # drive_in, object 
    @movie_title = movie_title
    @capacity = capacity
    @drive_in = drive_in
    @car = car 
    MovieScreen.all_screens << self 
  end

  def self.all_screens
    @@all 
  end 

  def cars 
    MovieScreen.all_screens.select do |movie_screen|
      movie_screen == self  
    end.map do |movie_screen|
      movie_screen.car
    end 
  end

  def number_of_viewers 
    MovieScreen.all_screens.select do |movie_screen|
      movie_screen == self 
    end.map do |car|
      car.passengers 
    end

end

# #### MovieScreen

# - `MovieScreen#number_of_viewers`
#   - Returns the total number of passengers viewing the movie, from all the cars currently at this movie screen
# - `MovieScreen#at_capacity?`
#   - Returns a boolean. If the number of cars at this movie screen is equal to or above the capacity of the movie screen, returns `true`. Otherwise, returns `false`.
# - `MovieScreen#available_spots`
#   - Returns the number of spots for cars available at this movie screen. This should be the capacity minus the number of cars currently at this movie screen.
# - `MovieScreen#add_car(car)`
#   - Takes in a `Car` instance as the argument
#   - Depending on the available capacity of the movie screen, associates the `Car` with this movie screen.
#     - If the movie screen is _not_ at capacity, updates the car's current movie screen and returns the string `"Enjoy!"`.
#     - If the movie screen is at capacity, it should return the string "Sold Out!", and should not associate the car to the movie screen.