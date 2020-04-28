class MovieScreen
  #Returns an array of all cars currently at this movie screen
  attr_reader :capacity, :movie_title, :drive_in
  attr_accessor :cars

  @@all = []

  #Movie screen is the join model
  def initialize(hash)
    @movie_title = hash[:movie_title]
    @capacity = hash[:capacity]
    @drive_in = hash[:drive_in]
    MovieScreen.all << self
  end

  def self.all
    @@all
  end


end
