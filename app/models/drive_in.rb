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


class DriveIn
  attr_reader :name
 def initialize(name)
   @name
 end

 def screens
   Car.all.select { |car| car.current_movie_screen.drive_in == self ? car.current_movie_screen : nil }.compact
 end

 def whats_playing
   self.screens.map { |movie_screen| movie_screen.movie_title}
 end

 def get_head_count
   Car.all.select{ |car| car.current_movie_screen.drive_in == self ? car.passenger_count: nil }.compact.sum
 end

 def get_screens_capacity
    self.screens..map { |movie_screen| movie_screen.capacity}.sum
 end


 def full_house?
   #get_head_count > this.capacity
      self.get_head_count >= self.get_screens_capacity ? true : false 
 end

end
