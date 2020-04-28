class MovieScreen
  attr_reader :capacity, :movie_title, :drive_in  

  @@all = []

  #movie screen is the join model
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
