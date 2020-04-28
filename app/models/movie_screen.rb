class MovieScreen
  attr_reader :capacity, :movie_title, :drive_in, :car 

  @@all_screens = []

  def initialize(movie_title, capacity, drive_in, car)
    @movie_title = movie_title
    @capacity = capacity
    @drive_in = drive_in
    @car = car
    MovieScreen.all_screens << self
  end

  def self.all_screens
    @@all_screens
  end

  def cars
    MovieScreen.all.select do |moviescreen|
      moviescreen.car
    end
  end

end
