class MovieScreen
  attr_reader :capacity, :movie_title, :drive_in  

  def initialize(movie_title, capacity, drive_in)
    @movie_title = movie_title
    @capacity = capacity
    @drive_in = drive_in
  end
end

# MovieScreen

# MovieScreen#initialize(movie_title, capacity, drive_in)
# A movie screen should be initialized with a movie title as a string, capacity (as an integer), and a drive_in object.
# The movie title, capacity, and drive in cannot be changed after the MovieScreen is initialized.

# MovieScreen#movie_title
# should return the movie title

# MovieScreen#capacity
# should return the MovieScreen's capacity

# MovieScreen#drive_in
# should return the DriveIn associated with this MovieScreen

# MovieScreen.all_screens
# Returns an array of all movie screens that have been created.