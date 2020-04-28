class DriveIn
    attr_reader :name #allows return of the DriveIn name with a getter method; no setter method prevents changes to name
    @@all = []
    def initialize(name)
        @name = name
        DriveIn.all << self
    end

    def self.all
        @@all
    end

    def screens
        MovieScreen.all_screens.select {|screen| screen.drive_in == self}
    end

    def whats_playing
        screens.map {|screen| screen.movie_title}
    end

    def full_house?
        screens.all? {|screen| screen.at_capacity?}
    end
end