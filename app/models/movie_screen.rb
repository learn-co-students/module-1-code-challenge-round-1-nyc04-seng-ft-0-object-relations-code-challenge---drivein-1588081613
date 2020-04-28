class MovieScreen
  attr_reader :capacity, :movie_title, :drive_in  
  @@all = []

  def initialize(movie_title, capacity, drive_in)
    @movie_title = movie_title
    @capacity = capacity
    @drive_in = drive_in
    MovieScreen.all_screens << self
  end

  def movie_title
    @movie_title
  end

  def capacity
    @capacity
  end

  def drive_in
    @drive_in
  end

  def self.all_screens
    @@all
  end

  def cars
    Car.all.select {|x| x.current_movie_screen == self}
  end

  def number_of_viewers
    cars.map(&:passenger_count).sum
  end

  def at_capacity?
    if number_of_viewers >= @capacity
      true
    else
      false
    end
  end

  def available_spots
    @capacity - number_of_viewers
  end

  def add_car(car)
    if available_spots > car.passenger_count
      puts "Enjoy!"
      @capacity - car.passenger_count
      car.current_movie_screen = self
    else
      puts "SOld Out!"
    end
  end




end
