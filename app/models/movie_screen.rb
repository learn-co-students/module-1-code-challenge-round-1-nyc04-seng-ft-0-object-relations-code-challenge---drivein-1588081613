class MovieScreen
  attr_accessor :capacity, :movie_title, :drive_in, :car 
  @@all_screens = []
  def initialize(movie_title, capacity, drive_in, car)
    @movie_title = movie_title
    @capacity = capacity
    @drive_in = drive_in
    @car = car
    MovieScreen.all_screens << self
  end
  

  def self.all_screens
    @@all_screens
  end

  def cars
    self.map do |ms|
      ms.car
    end
    #i know i am supposed to ask the
    # instance of a movie screen how many cars there 
    # are. but if i add a moviescreen attribute to the car instance, 
    # there is no longer a single source of truth. 
    #the readme states that things are happening - through - the movie screen.
    # but it doesnt seem to actually be functioning to me as a join class.
  end

  def number_of_viewers
    total = 0
    cars.map do |cars|
     total = total + cars.passenger_count
    end
    total
  end

def at_capacity?
  if number_of_viewers >= @capacity
    return true
  else
    return false
  end
 
end

def available_spots
  self.capacity - self.number_of_viewers
end

def add_car(car)
  if at_capacity? == false
    car.current_movie_screen = self
    puts "Enjoy!"
  else 
    puts "Sold Out!"
  end
end
# this method may rely on the current_movie_screen
# method we were asked for earlier. the idea being that you could 
# use it to associate that instance of a car with this current screen.
# however i am not understanding exaclty why what i have for that method isnt working.

  

end
