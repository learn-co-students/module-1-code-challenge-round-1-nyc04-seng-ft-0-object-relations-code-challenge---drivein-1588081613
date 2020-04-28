# has many screens, has many cars through movie screen

# - `DriveIn#initialize(name)`
#   - A drive-in should be initialized with a `name` as a string.
#   - The name **cannot** be changed after the drive-in is initialized.
# - `DriveIn#name`
#   - should return the name of the `DriveIn`

require "pry"
class DriveIn

    attr_reader :name #cannot be changed

    def initialize(name)
        @name = name
    end

# - `DriveIn#screens`
# - Returns an array of all movie screens at this drive-in.

    def screens
        MovieScreen.all.select do |screen|
            screen.drive_in == self
            binding.pry
        end
    end


end
