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
      
    end

end


#deliverables
#initialized with "name"
#name cannot be changed after initialized

#method#name returns name of drivein
#screens - returns array of all movie screens