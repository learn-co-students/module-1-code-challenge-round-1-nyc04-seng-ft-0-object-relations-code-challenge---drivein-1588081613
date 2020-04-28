class DriveIn

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def screens
        MovieScreen.all.select do |screen|
        screen.drive_in == self
        end
    end
    
    def whats_playing
        self.screens.map do |screen|
        screen.movie_title
        end
    end

    def full_house
        self.screens.at
       
    


end

