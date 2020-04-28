class MovieScreen
  attr_reader :capacity, :movie_title, :drive_in  
  @@all = []
  def initialize(movie_title, capacity, drive_in)
    @movie_title = movie_title
    @capacity = capacity
    @drive_in = drive_in

    MovieScreen.all_screens<<self
  end

  def self.all_screens
    @@all
  end

  def cars
    Car.all.select do |car|
      car.movie_screen == self
    end
  end

  def number_of_viewers
    cars.sum{|car| car.passenger_count}
  end

  def at_capacity?
    if(number_of_viewers>=@capacity)
      true
    else
      false
    end
  end

  def available_spots
    if(at_capacity?)
      0
    else
      @capacity-number_of_viewers
    end
  end

  def add_car(car)
    if(available_spots>=car.passenger_count)
      car.movie_screen = self
      "Enjoy!"
    else
      "Sold Out!"
    end
  end
end
