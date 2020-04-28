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
    Car.all.select{|car| car.current_movie_screen == self}
  end

  def number_of_viewers
    viewers = 0
    cars.each{|car| viewers += car.passenger_count}
    viewers
  end

  def at_capacity?
    number_of_viewers >= self.capacity
  end

  def available_spots
    self.capacity - number_of_viewers
  end

  def add_car(car)
    if !at_capacity?
      car.current_movie_screen = self
      puts "Enjoy"
    else
      puts "Sold Out"
    end
  end
end
