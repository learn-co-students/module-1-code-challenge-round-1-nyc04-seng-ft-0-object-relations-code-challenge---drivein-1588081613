class Car
  attr_accessor :passenger_count
@@all = []
  def initialize(passenger_count)
    @passenger_count = passenger_count
    @@all << self
  end

end
