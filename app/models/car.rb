class Car
  attr_accessor :passenger_count, :movie_screen

  @@all = []

  def initialize(passenger_count)
    @passenger_count = passenger_count
    Car.all << self
  end

  def self.all
    @@all
  end

  #Returns the current movie screen that a particular car is associated with
  def current_movie_screen
    MovieScreen.all.map {|moviescreen| moviescreen.cars.select {|car| car == self}}
  end

  #Assigns a movie screen object to a particular car to indicate which movie screen that car is currently at.
  def current_movie_screen= (screen)
  end

end
