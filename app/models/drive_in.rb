require 'pry'

class DriveIn

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def screens
        Movie_screen.all.select{|screen| screen.drive_in == self}
    end
binding.pry
end





# #### DriveIn

# - `DriveIn#screens`
#   - Returns an array of all movie screens at this drive-in.
