class DriveIn

#   - The name **cannot** be changed after the drive-in is initialized.
    attr_reader :name
# - `DriveIn#initialize(name)`
#   - A drive-in should be initialized with a `name` as a string.
    def initialize(name)
        @name = name
    end
# - `DriveIn#name`
#   - should return the name of the `DriveIn`
    def self.name
        name
    end

# Object Relationship Methods
# - `DriveIn#screens`
#   - Returns an array of all movie screens at this drive-in.
    def screens
        MovieScreen.all.select { |movie_screen| movie_screen.drive_in == self }
    end

# Aggregate Methods
# - `DriveIn#whats_playing`
#   - Returns an array of all the names of the movies playing at the movie screens at this drive-in.
# - `DriveIn#full_house?`
#   - Returns true if all movie screens at _this_ drive-in are at capacity.

end
