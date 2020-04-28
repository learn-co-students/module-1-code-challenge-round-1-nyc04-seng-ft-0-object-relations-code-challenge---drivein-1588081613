class Car
  attr_reader :drive_in, :movie_screen
  attr_writer :passenger_count
  @@all=[]

  def initialize(passenger_count,drive_in,movie_screen)
    @passenger_count = passenger_count
    @drive_in=drive_in
    @movie_screen=movie_screen
    Car.all << self
  end

  def self.all
    @@all
  end

  def movie_screen
    Car.all.select do |car_info|
      car_info.movie_screen == self
    end
  end

  def current_movie_screen=(movie_screen)
    current_movie_screen=(movie_screen)
  end
  



end
