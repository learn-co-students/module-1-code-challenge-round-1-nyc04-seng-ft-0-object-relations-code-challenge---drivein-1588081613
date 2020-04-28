require 'pry'

class Car
  attr_accessor :passenger_count

  def initialize(passenger_count)
    @passenger_count = passenger_count
  end
end



# #### Car

#   - the passenger count **can** be changed after the `Car` is initialized
# - `Car#passenger_count`
#   - Returns the number of passengers in the car.
# - `Car.all`
#   - Returns an array of all car instances that have been created.