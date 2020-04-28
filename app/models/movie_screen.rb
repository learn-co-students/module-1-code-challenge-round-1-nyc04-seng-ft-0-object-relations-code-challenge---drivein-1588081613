class MovieScreen
  attr_reader :capacity, :movie_title, :drivein, :car 
  @@all = []
  def initialize(movie_title, capacity, drivein, car)
    @movie_title = movie_title
    @capacity = capacity
    @drivein = drivein
    @car = car
    MovieScreen.all << self
  end
  

  def self.all_screens
    @@all
  end

  def cars
    Cars.all.select do |cars|
      cars.MovieScreen == self
    end
  end

end
