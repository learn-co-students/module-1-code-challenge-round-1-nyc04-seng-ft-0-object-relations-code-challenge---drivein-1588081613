class DriveIn

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def name
        @name
    end

    def screens
        MovieScreen.all_screens.select {|x| x.drive_in == self}
    end

    def whats_playing
        #screens.map { |x| x.movie_title}
        screens.map(&:movie_title)
    end

    def full_house?
        screens.all? {|screen| screen.at_capacity?}
    end




end
