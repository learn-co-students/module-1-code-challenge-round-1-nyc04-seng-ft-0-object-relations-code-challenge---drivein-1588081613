class DriveIn
    @@all = []
    attr_reader :name
    def initialize(name)
        @name = name

        DriveIn.all<<self
    end

    def self.all
        @@all
    end

    def screens
        MovieScreen.all_screens.select do |movie_screen|
            movie_screen.drive_in == self
        end
    end

    def whats_playing
        screens.map do |i|
            i.movie_title
        end.uniq
    end

    def full_house?
        myScreens = screens
        if (myScreens.length !=0)
            myScreens.all? {|movie_screen|
                movie_screen.at_capacity?
            }
        else
           false
        end

    end
end
