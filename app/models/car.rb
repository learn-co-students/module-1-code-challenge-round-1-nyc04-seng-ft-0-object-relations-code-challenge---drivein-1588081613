class Car
  attr_accessor :passenger_count

  @@all = []

  def initialize(passenger_count)
    # passenger_count, integer 
    @passenger_count = passenger_count
    Car.all << self 
  end

  def self.all
    @@all
  end

  def current_movie_screen
    MovieScreen.all_screens.find do |movie_screen|
      movie_screen.car == self 
    end 
  end

  def current_movie_screen=(movie_screen)
    # this method passes in a movie_screen instance to assign it to a car instance 
    self.current_movie_screen = movie_screen 
  end 

end