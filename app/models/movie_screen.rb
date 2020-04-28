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
    #all cars at current movie screen
    Car.all.select do |car|
      car.current_movie_screen == self
    end
  end

  def number_of_viewers
    sum = 0
    self.cars.each do |car|
      sum = sum + car.passenger_count
    end
    sum
  end

  def at_capacity?
    self.cars.count >= self.capacity
  end

  def available_spots
    if at_capacity?
      0
    else
      self.capacity - self.cars.count
    end
  end

  def add_car(car)
    if self.at_capacity?
      "Sold Out"
    else
      car.current_movie_screen = self
      "Enjoy!"
    end

  end


end
