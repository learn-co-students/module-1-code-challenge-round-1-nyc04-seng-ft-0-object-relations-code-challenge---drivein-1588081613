#has many cars
# join model
# drive ins have many screens => movie screens have many cars => cars

# - `MovieScreen#initialize(movie_title, capacity, drive_in)`
#   - A movie screen should be initialized with a movie title as a string, capacity (as an integer), 
# and a `drive_in` object.
#   - The movie title, capacity, and drive in **cannot** be changed after the MovieScreen is initialized.
# - `MovieScreen#movie_title`
#   - should return the movie title
# - `MovieScreen#capacity`
#   - should return the `MovieScreen`'s capacity
# - `MovieScreen#drive_in`
#   - should return the `DriveIn` associated with this `MovieScreen`
# - `MovieScreen.all_screens`
#   - Returns an array of all movie screens that have been created.

class MovieScreen
  attr_reader :capacity, :movie_title, :drive_in, :car  
  @@all = []

  # can I initialize with a car argument?

  def initialize(movie_title, capacity, drive_in)
    @movie_title = movie_title
    @capacity = capacity
    @drive_in = drive_in
    MovieScreen.all_screens << self
  end

  def self.all_screens
    @@all = []
  end

  # - `MovieScreen#cars`
  # - Returns an array of all cars currently at this movie screen.

  def cars
    
  end



end
