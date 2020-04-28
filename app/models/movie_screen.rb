class MovieScreen
  attr_reader :capacity, :movie_title, :drive_in  
  @@all = []

  def initialize(movie_title, capacity, drive_in)
    @movie_title = movie_title
    @capacity = capacity
    @drive_in = drive_in
    MovieScreen.all_screens << self
  end

  def movie_title
    @movie_title
  end

  def capacity
    @capacity
  end

  def drive_in
    @drive_in
  end

  def self.all_screens
    @@all
  end

end
