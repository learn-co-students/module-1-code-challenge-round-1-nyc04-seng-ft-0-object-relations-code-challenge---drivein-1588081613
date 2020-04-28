class DriveIn
    attr_reader :name 
    def initialize(name)
        @name = name 
    end
    def screens 
        MovieScreen.all.select {|screens| screens.drive_in == self}
        #Returns an array of all movie screens at this drive-in
    end 
    def whats_playing
        screens.map {|screens| screens.movie_title}
    end
    def full_house?
         total_passengers = 0
         screens.map do |screens| 
            total_passengers = total_passengers + screens.passenger_count
         end
        total_passengers
        #  
         #iterate through the screens method to add up the passenger count 
         #and if total_passengers >= screens.capacity
        # Returns true if all movie screens at _this_ drive-in are at capacity.
    end
end

#### DriveIn

# - ((`DriveIn#initialize(name)`
#   - A drive-in should be initialized with a `name` as a string.
#   - The name **cannot** be changed after the drive-in is initialized.
# - `DriveIn#name`
#   - should return the name of the `DriveIn`))

# - ((`DriveIn#screens`
#   - Returns an array of all movie screens at this drive-in.))

# - ((`DriveIn#whats_playing`
#   - Returns an array of all the names of the movies playing at the movie screens at this drive-in.))
# - ((`DriveIn#full_house?`
#   - Returns true if all movie screens at _this_ drive-in are at capacity.))