class Car
  attr_accessor :passenger_count #:current_movie_screen

  @@all =[]

  def initialize(passenger_count)
    @passenger_count = passenger_count
    #@current_movie_screen = current_movie_screen
    Car.all << self
  end

  def self.all
    @@all
  end

  def passenger_count #passenger count of all cars not instance of car
    Car.all.select do |car|
      car.passenger_count
    end
  end

  # def current_movie_screen #reader method
  #   binding.pry
  #   current_movie = MovieScreen.all_screens do |cars|
  #     binding.pry
  #     car.car == self
  #   end
  #   current_movie
  # end

  # def current_movie_screen=(current_movie_screen) #writer method
  #   self.movie_screen = current_movie_screen
  # end

end


#initializes with passenger_count
  #can only read passenger_count

#deliverables
#initialized with passenger_count(int)
#passenger_count returns number of passengers in car
#.all returns all car intances
#current_movie_screen -reader  returns current movie that car is associated with
#current movie screen= wrtier -> assigns a movie screen object to car to indicate which movie screen car is at
