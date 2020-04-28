class Car
  attr_accessor :passenger_count, :movie_screen
  @@all = []
  def initialize(passenger_count)
    @passenger_count = passenger_count
    @movie_screen = nil

    Car.all<<self
  end

  def self.all
    @@all
  end

end
