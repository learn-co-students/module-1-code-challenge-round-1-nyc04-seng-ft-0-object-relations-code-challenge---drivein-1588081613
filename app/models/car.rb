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

  def current_movie_screen_helper
    MovieScreen.all.select do |moviescreen|
      moviescreen.car == self
    end
  end

  def current_movie_screen
    current_movie_screen_helper.each do |screen|
      screen.car
    end
  end

end
