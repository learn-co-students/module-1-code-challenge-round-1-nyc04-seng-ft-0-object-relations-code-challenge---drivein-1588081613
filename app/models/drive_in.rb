class DriveIn
    attr_reader :name
    def initialize (name) 
        @name = name
    end

    def screens
        MovieScreen.all.select do |movie_screen|
            movie_screen.drive_in == self
        end
    end

    def whats_playing
        self.screens.map do |screen|
            screen.movie_titlew
        end
    end
    
    def full_house_array
    # a helper method, that should return an array of falses and/or tures
        self.screens.map do |screen|
            screen.at_capacity?
        end
    end

    def full_house?
        if full_house_array.include? (false)
        # if the returned array from the helper method has at lease one false,
        # then at least one of the movie screen is not full
            false
        else
            true
        end
    end
end
