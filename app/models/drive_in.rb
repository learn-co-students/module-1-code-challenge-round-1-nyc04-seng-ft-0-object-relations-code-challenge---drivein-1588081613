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

    def name
        self #returns drivein object
    end

    def screens
        binding.pry
        MovieScreen.all_screens.select do |movie|
            binding.pry
            movie.drive_in == self
        end
    end

end


#deliverables
#initialized with "name"
#name cannot be changed after initialized

#method#name returns name of drivein
#screens - returns array of all movie screens