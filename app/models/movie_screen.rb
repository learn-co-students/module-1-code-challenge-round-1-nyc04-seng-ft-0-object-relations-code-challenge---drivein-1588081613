require 'pry'

class MovieScreen
  attr_reader :capacity, :movie_title, :drive_in  

  @@all = []

  def initialize(capacity, movie_title, drive_in)
    @capacity = capacity
    @movie_title = movie_title
    @drive_in = drive_in
    @@all << self
  end
# binding.pry
  def movie_title
    @movie_title
  end
  # binding.pry 
  def capacity
    @capacity
  end

  def drive_in
    @drive_in
  end

  def all_screens
    @@all
  end



  binding.pry
end

# screen1 = MovieScreen.new(100, "gone with the wind", "Drive Inn")
# binding.pry
# screen1
# binding.pry


# #### MovieScreen

# - `MovieScreen#cars`
#   - Returns an array of all cars currently at this movie screen.