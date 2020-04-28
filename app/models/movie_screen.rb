class MovieScreen

  #   - The movie title, capacity, and drive in **cannot** be changed after the MovieScreen is initialized.
  attr_reader :capacity, :movie_title, :drive_in  
  @@all = []

# - `MovieScreen#initialize(movie_title, capacity, drive_in)`
#   - A movie screen should be initialized with a movie title as a string, capacity (as an integer), and a `drive_in` object.
  def initialize(movie_title, capacity, drive_in)
    @movie_title = movie_title
    @capacity = capacity
    @drive_in = drive_in
    MovieScreen.all << self
  end

# - `MovieScreen#movie_title`
#   - should return the movie title
  def self.movie_title
    movie_title
  end

# - `MovieScreen#capacity`
#   - should return the `MovieScreen`'s capacity
  def self.capacity
    capacity
  end
# - `MovieScreen#drive_in`
#   - should return the `DriveIn` associated with this `MovieScreen`
  def self.drive_in
    drive_in
  end

# - `MovieScreen.all_screens`
#   - Returns an array of all movie screens that have been created.
  def self.all
    @@all
  end

# Object Relationship Methods
# - `MovieScreen#cars`
#   - Returns an array of all cars currently at this movie screen.
  def cars
    Car.all.select {|car| car.movie_screen == self }
  end

# Aggregate Methods
# - `MovieScreen#number_of_viewers`
#   - Returns the total number of passengers viewing the movie, from all the cars currently at this movie screen
  def number_of_viewers
    Car.all.map {|car| car.passenger_count}.sum
  end

# - `MovieScreen#at_capacity?`
#   - Returns a boolean. If the number of cars at this movie screen is equal to or above the capacity of the movie screen, returns `true`. Otherwise, returns `false`.
  def at_capacity?
    Car.all.count >= self.capacity
  end
# - `MovieScreen#available_spots`
  #   - Returns the number of spots for cars available at this movie screen. This should be the capacity minus the number of cars currently at this movie screen.
# - `MovieScreen#add_car(car)`
  def self.available_spots
    self.capacity - cars.count
  end
#   - Takes in a `Car` instance as the argument
#   - Depending on the available capacity of the movie screen, associates the `Car` with this movie screen.
#     - If the movie screen is _not_ at capacity, updates the car's current movie screen and returns the string `"Enjoy!"`.
#     - If the movie screen is at capacity, it should return the string "Sold Out!", and should not associate the car to the movie screen.

end
