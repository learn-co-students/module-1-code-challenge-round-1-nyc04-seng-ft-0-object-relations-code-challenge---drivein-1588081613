class DriveIn
    attr_reader :name 

    def initialize(name)
        @name = name
    end

    def screens
        MovieScreen.all_screens.select do |movie_screen|
            movie_screen.drive_in == self 
        end 
    end

    def whats_playing 
        MovieScreen.all_screens.select do |movie_screen|
            movie_screen.drive_in == self 
        end.map do |movie_screen|
            movie_screen.movie_title
        end 
    end

    def full_house
        m_s_at_this_drive_in = MovieScreen.all_screens.select do |movie_screen|
            movie_screen.drive_in == self 
        end 

        if m_s_at_this_drive_in.capacity = 10
            true  
        end
    end

end