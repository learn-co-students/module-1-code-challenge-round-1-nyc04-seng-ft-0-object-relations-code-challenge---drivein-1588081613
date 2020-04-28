class DriveIn

    attr_reader :name

    def initialize(name)
        @name=name
    end

    def name #already possible with attr_reader but asked for specific #name method so here it is
        @name
    end

    def screens
        MovieScreen.all_screens.select do |screens|
            screens.drive_in == self
        end
    end

    def whats_playing
        new_array=[]
        MovieScreen.all_screens.each do |screens|
           if screens.drive_in == self
             new_array << screens.movie_title
           end
        end
        return new_array
    end

    def full_house?



    end




end
