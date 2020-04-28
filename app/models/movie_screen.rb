class MovieScreen
  
  attr_reader :capacity, :movie_title, :drive_in  

  @@all = []

  def initialize(movie_title, capacity, drive_in)
    @movie_title = movie_title
    @capacity = capacity
    @drive_in = drive_in
    MovieScreen.all << self
  end

  def self.all
    @@all
  end

  def cars
    Cars.all.select do |car|
      car.current_movie_screen == self
    end

  def number_of_viewers
    passenger_array = self.cars.map do |car|
    car.passenger_count 
    end
    passenger_array.sum
  end

  def at_capacity?
  self.number_of_viewers >= self.capacity
  end

  def available_spots
  self.capacity - self.number_of_viewers
  end

  def add_car(car)
    if self.available_spots
      car.current_movie_screen = self
      "Enjoy!"
    else
      















end
