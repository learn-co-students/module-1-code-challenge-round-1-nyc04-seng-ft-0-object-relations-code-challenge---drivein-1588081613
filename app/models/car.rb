class Car
  #Returns the current movie screen that a particular car is associated with.
  #Assigns a movie screen object to a particular car to indicate which movie screen that car is currently at
  
  attr_accessor :passenger_count, :current_movie_screen

  @@all = []

  def initialize(passenger_count, current_movie_screen)
    @passenger_count = passenger_count
    @current_movie_screen = current_movie_screen
    Car.all << self
  end

  def self.all
    @@all
  end

end
