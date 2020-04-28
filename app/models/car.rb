class Car

  attr_reader :passenger_count

  @@all = []

  def initialize(passenger_count=0)
    @passenger_count = passenger_count
    Car.all << self
  end
  def self.all
    @@all
  end
  # def passenger_count
  #   self.all.
  # end
end

# Car

# DONE Car#initialize(passenger_count)
    # A car should be initialized with a passenger_count (as an integer).
    # the passenger count can be changed after the Car is initialized

# Car#passenger_count - Returns the number of passengers in the car.

# DONE Car.all - Returns an array of all car instances that have been created.
