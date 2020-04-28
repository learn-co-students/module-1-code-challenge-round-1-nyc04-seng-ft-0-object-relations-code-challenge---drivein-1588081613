class MovieScreen
  
  attr_reader :capacity, :movie_title, :drive_in  #creates getter method to return movie_title, capacity, and drive-in
  #don't need car variable here; Car class is tracking which movie screen it belongs to

  @@all = []

  def initialize(movie_title, capacity, drive_in)
    @movie_title = movie_title
    @capacity = capacity
    @drive_in = drive_in
    MovieScreen.all_screens << self
  end

  def self.all_screens
    @@all
  end

  def cars
    Car.all.select {|car| car.current_movie_screen == self}
  end

  def number_of_viewers
    total_passengers = 0
    cars.each do |car|
      total_passengers += car.passenger_count
    end
    total_passengers
  end

  def at_capacity?
    if cars.count >= self.capacity
      true
    else
      false
    end
  end

  def available_spots
    self.capacity - cars.size
  end

  def add_car(car)
    if at_capacity?
      puts "Sold Out!"
    else
      car.current_movie_screen = self
      puts "Enjoy!"
    end
  end


end