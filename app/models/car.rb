class Car
  attr_accessor :passenger_count
  @@all = []

  def initialize(passenger_count)
    @passenger_count = passenger_count
    Car.all << self
  end

  def self.all
    @@all
  end

  def current_movie_screen
    MovieScreen.all_screens.select do |x|
      x.car == self
    end
  end

end
