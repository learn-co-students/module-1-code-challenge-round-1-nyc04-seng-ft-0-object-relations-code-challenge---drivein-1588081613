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
    self.cars
    end

  end

  # def number_of_viewers
  #   # cars.map do |x|
  #   #   binding.pry
  #   #   x.passenger_count
  #   end.sum
  # end

  def number_of_viewers
    cars.passenger_count
  end

  def at_capacity?
    # binding.pry
    if cars.count >= self.capacity
      binding.pry
    else 
      return "false"
    end
  end

  # def available_spots
  #   if self.capacity -=
  # end

  # def add_car
  # end





end
