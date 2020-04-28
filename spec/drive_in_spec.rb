require_relative 'spec_helper'
#### DriveIn

# - `DriveIn#initialize(name)`
#   - A drive-in should be initialized with a `name` as a string.
#   - The name **cannot** be changed after the drive-in is initialized.
# - `DriveIn#name`
#   - should return the name of the `DriveIn`
#
# - `DriveIn#screens`
#   - Returns an array of all movie screens at this drive-in.

# - `DriveIn#whats_playing`
#   - Returns an array of all the names of the movies playing at the movie screens at this drive-in.
# - `DriveIn#full_house?`
#   - Returns true if all movie screens at _this_ drive-in are at capacity.

describe 'DriveIn' do
  describe '#screens' do
    it 'returns all screens for this drive-in' do
    drive_in1 = DriveIn.new('drive_in1')
    drive_in2 = DriveIn.new('drive_in3')

    movie_screen1 = MovieScreen.new('movie_title1', 50, drive_in1)
    movie_screen2 = MovieScreen.new('movie_title2', 60, drive_in2)

    car1 = Car.new(movie_screen1, 2)
    car2 = Car.new(movie_screen2, 4)

    expect(drive_in1.screens).to include(movie_screen1)
    expect(drive_in2.screens).to include(movie_screen2)
  end
end

describe '#whats_playing' do
  it 'returns all the names of the movies playing at the movie screens at this drive-in.' do
  drive_in1 = DriveIn.new('drive_in1')
  drive_in2 = DriveIn.new('drive_in3')

  movie_screen1 = MovieScreen.new('movie_title1', 50, drive_in1)
  movie_screen2 = MovieScreen.new('movie_title2', 60, drive_in2)

  car1 = Car.new(movie_screen1, 2)
  car2 = Car.new(movie_screen2, 4)

  expect(drive_in1.whats_playing).to include(movie_title1)
  expect(drive_in2.whats_playing).to include(movie_title2)

 end
end

describe '#full_house' do
  it 'Returns true if all movie screens at _this_ drive-in are at capacity.' do
  drive_in1 = DriveIn.new('drive_in1')
  drive_in2 = DriveIn.new('drive_in3')

  movie_screen1 = MovieScreen.new('movie_title1', 50, drive_in1)
  movie_screen2 = MovieScreen.new('movie_title2', 60, drive_in2)

  car1 = Car.new(movie_screen1, 51)
  car2 = Car.new(movie_screen2, 4)

  expect(drive_in1.full_house).to eq(false)
  expect(drive_in2.full_house).to eq(true)

 end
end

end
