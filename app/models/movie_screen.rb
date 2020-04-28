class MovieScreen
  
  attr_reader :capacity, :movie_title, :drive_in  #creates getter method to return movie_title, capacity, and drive-in
  attr_accessor :car #since this is the join model, car object must belong here. Car can be changed so need an accessor
  @@all = []

  def initialize(movie_title, capacity, drive_in, car)
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
    MovieScreen.all_screens.map {|screen| screen.car}
  end
end
