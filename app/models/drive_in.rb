class DriveIn
attr_reader :name
#might want a separate method called #name
#may not need the @@all class method.
@@all = []
    def initialize(name)
        @name = name
        DriveIn.all << self
    end 

    def self.all
        @@all
    end

    def screens
        MovieScreens.select.all do |ms|
            ms.drive_in == self
        end
    end

    def whats_playing?
        screens.map do |ms|
            ms.movie_title
        end
    end

    def full_house?
        MovieScreen.all.all? do |ms|
            ms.at_capacity? == true
        end
    end




end
