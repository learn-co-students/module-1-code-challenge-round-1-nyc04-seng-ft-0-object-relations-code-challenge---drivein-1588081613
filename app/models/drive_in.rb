class DriveIn
    attr_reader :name

    def initialize (name)
        @name = name
    end

    #Returns an array of all movie screens at this drive-in.
    def screens
        MovieScreen.all.select {|moviescreen| moviescreen.drive_in == self}
    end

    #Returns an array of all the names of the movies playing at the movie screens at this drive-in.
    def whats_playing
        screens.map {|screen| screen.movie_title}
    end

    #Returns true if all movie screens at this drive-in are at capacity
    def full_house?
        if screens.each {|screen| screen.at_capacity? == true}
            return true
        else 
            return false
        end
    end

end
