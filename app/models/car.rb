class Car
  
  attr_accessor :passenger_count, :current_movie_screen #allows a reader method that returns the number of passengers in a car and allows passenger_count to be changed after initialization
  @@all = [] #will be single source of truth; car instance tracks which moviescreen it belongs to
  
  def initialize(passenger_count, current_movie_screen = nil)
    @passenger_count = passenger_count
    @current_movie_screen = current_movie_screen
    Car.all << self
  end

  def self.all
    @@all
  end
  
  def current_movie_screen #getter method to retrieve current movie screen
    @current_movie_screen
  end

  def current_movie_screen=(movie_object) #setter method to be able to change current_movie_screen
    @current_movie_screen = movie_object
  end
end
