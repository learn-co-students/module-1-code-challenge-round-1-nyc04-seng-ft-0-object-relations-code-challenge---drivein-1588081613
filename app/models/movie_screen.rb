class MovieScreen
  attr_reader :capacity, :movie_title, :drive_in

  @@all = []

  def initialize(hash)
    @movie_title = hash[:movie_title]
    @capacity = hash[:capacity]
    @drive_in = hash[:drive_in]
    MovieScreen.all << self
  end

  def self.all
    @@all
  end

  #Returns an array of all cars currently at this movie screen
  def cars
    Car.all.select {|car| car.current_movie_screen == self}
  end

  #Returns the total number of passengers viewing the movie, from all the cars currently at this movie screen
  def number_of_viewers
    cars.map {|car| car.passenger_count}.sum
  end

  #Returns a boolean. If the number of cars at this movie screen is equal to or above the capacity of the movie screen, returns true. Otherwise, returns false.
  def at_capacity?
    number_of_viewers > self.capacity || number_of_viewers == self.capacity
  end

  #Returns the number of spots for cars available at this movie screen. This should be the capacity minus the number of cars currently at this movie screen
  def available_spots
    self.capacity - number_of_viewers
  end

  #Depending on the available capacity of the movie screen, associates the Car with this movie screen.
    #If the movie screen is not at capacity, updates the car's current movie screen and returns the string "Enjoy!".
    #If the movie screen is at capacity, it should return the string "Sold Out!", and should not associate the car to the movie screen.
  def add_car(car)
    if number_of_viewers !at_capacity? 
      car.current_movie_screen = self
      puts "Enjoy!"
    else 
      puts "Sold out!"
    end
  end

end
