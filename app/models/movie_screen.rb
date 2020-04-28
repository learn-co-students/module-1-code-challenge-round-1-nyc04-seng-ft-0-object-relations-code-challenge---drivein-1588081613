class MovieScreen
  attr_reader :capacity, :movie_title, :drive_in 
  attr_accessor :car
  @@all = []
  def initialize(movie_title, capacity, drive_in, car)
    ##maybe take out the car?? 
    @movie_title = movie_title
    @capacity = capacity
    @drive_in = drive_in
    @car = car
    MovieScreen.all << self
  end
  def self.all 
    @@all 
  end
  def cars
 #rework this... returns empty arrays for each car
    Car.all.select {|cars| cars.current_movie_screen == self}
  end 
  
end

#### MovieScreen

#### MovieScreen

# - ((`MovieScreen#initialize(movie_title, capacity, drive_in)`
#   - A movie screen should be initialized with a movie title as a string, capacity (as an integer), and a `drive_in` object.
#   - The movie title, capacity, and drive in **cannot** be changed after the MovieScreen is initialized.))
# - ((`MovieScreen#movie_title`
#   - should return the movie title))
# - ((`MovieScreen#capacity`
#   - should return the `MovieScreen`'s capacity))
# - ((`MovieScreen#drive_in`
#   - should return the `DriveIn` associated with this `MovieScreen`))
# - ((`MovieScreen.all_screens`
#   - Returns an array of all movie screens that have been created.))

# - `MovieScreen#cars`
#   - Returns an array of all cars currently at this movie screen.

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