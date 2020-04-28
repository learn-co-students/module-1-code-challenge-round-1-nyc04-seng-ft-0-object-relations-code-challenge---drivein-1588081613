require_relative 'spec_helper'
# - `Car#current_movie_screen`
#   - Returns the current movie screen that a particular car is associated with.
# - `Car#current_movie_screen=`
#   - Assigns a movie screen object to a particular car to indicate which movie screen that car is currently at.
#   - **Note:** this will happen _after_ a car has already been created.


#### Car
#
# - `Car#initialize(passenger_count)`
#   - A car should be initialized with a `passenger_count` (as an integer).
#   - the passenger count **can** be changed after the `Car` is initialized
# - `Car#passenger_count`
#   - Returns the number of passengers in the car.
# - `Car.all`
#   - Returns an array of all car instances that have been created.
# - `Car#current_movie_screen`
#   - Returns the current movie screen that a particular car is associated with.
# - `Car#current_movie_screen=`
#   - Assigns a movie screen object to a particular car to indicate which movie screen that car is currently at.
#   - **Note:** this will happen _after_ a car has already been created.


#### Car
#
# - `Car#initialize(passenger_count)`
#   - A car should be initialized with a `passenger_count` (as an integer).
#   - the passenger count **can** be changed after the `Car` is initialized
# - `Car#passenger_count`
#   - Returns the number of passengers in the car.
# - `Car.all`
#   - Returns an array of all car instances that have been created.
describe 'Car' do
  describe '#.all' do
    it 'returns all cars'
    drive_in1 = DriveIn.new('drive_in1')
    drive_in2 = DriveIn.new('drive_in3')

    movie_screen1 = MovieScreen.new('movie_title1', 50, drive_in1)
    movie_screen2 = MovieScreen.new('movie_title2', 60, drive_in2)

    car1 = Car.new(movie_screen1, 2)
    car2 = Car.new(movie_screen2, 4)

    expect(Car.all).to include(car1)
    expect(Car.all).to include(car2)
  end
end 
