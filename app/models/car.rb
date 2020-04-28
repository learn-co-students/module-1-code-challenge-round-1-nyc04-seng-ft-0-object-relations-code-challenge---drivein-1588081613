class Car
  attr_reader :passenger_count

  def initialize(passenger_count)
    @passenger_count = passenger_count
  end
end


#initializes with passenger_count
  #can only read passenger_count

#deliverables
#initialized with passenger_count(int)
#passenger_count returns number of passengers in car
#.all returns all car intances
#current_movie_screen -reader  returns current movie that car is associated with
#current movie screen= wrtier -> assigns a movie screen object to car to indicate which movie screen car is at
