class DriveIn
    attr_reader :name 

    @@all = []

    def initialize(name)
        @name = name
        DriveIn.all << self
    end

    def self.all
        @@all
    end

    def screens 
        MovieScreen.all.select{|screen| screen.drive_in == self}
    end

    def whats_playing
        screens.map{|screen| screen.movie_title}
    end

    def full_house?
        full = true
        capacity = screens.map{|screen| screen.at_capacity?}
        capacity.each do |screen|
            if screen == false
                full = false
            end
        end
        full
    end
end
