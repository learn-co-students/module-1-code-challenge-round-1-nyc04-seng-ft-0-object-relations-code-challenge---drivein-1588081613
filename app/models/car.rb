class Car
  attr_accessor :passenger_count
@@all = []
  def initialize(passenger_count)
    @passenger_count = passenger_count
    Car.self << all
  end

  def self.all
    @@all
  end

  def current_movie_screen() 
    MovieScreen.all.select do |moviescreen|
      moviescreen.car == self
    end
  end

  def current_movie_screen=(movie_title, capacity, drive_in)
    MovieScreen.new(movie_title, capacity, drive_in, self)
  end
  

end
