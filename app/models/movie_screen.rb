class MovieScreen
  attr_reader :capacity, :movie_title, :drive_in 
  attr_accessor :car
  @@all = []

  def initialize(movie_title, capacity, drive_in,car)
    @movie_title = movie_title
    @capacity = capacity
    @drive_in = drive_in
    @car = car
    @@all << self
  end
  def movie_title
    MovieScreen.map do |v|
      v.movie_title
  end
end
def capacity
  MovieScreen.map do |v|
    v.capacity
end
end
  def drive_in
    #should return the `DriveIn` associated with this `MovieScreen`
    DriveIn.all.select do |v|
      v.moviescreen == self
  end
end
def self.all
  @@all
end

end
