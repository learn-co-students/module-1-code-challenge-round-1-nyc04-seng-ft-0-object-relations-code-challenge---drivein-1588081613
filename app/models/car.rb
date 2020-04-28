class Car
  
  attr_accessor :passenger_count
  @@all=[]

  def initialize(passenger_count)
    @passenger_count = passenger_count
    Car.all << self
  end

  def self.all
    @@all
  end

  def current_movie_screen
    MovieScreen.all_screens.select do |screens|
      screens.car == self
    end
  end

  def current_movie_screen=(the_movie)
    MovieScreen.all_screens.map do |cars|
      if cars.car == self
        cars.current_movie_screen=the_movie
      end
    end
  end

end
