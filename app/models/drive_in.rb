

class DriveIn
    attr_reader :name, :screens 
 

    def initialize(name) 
        @name = name 
    end 

    def self.name 
        @name 
    end 

    def self.screens 
        @@screens 
    end 

    def self.whats_playing
        #return all movies playing array 
    end 

    def self.full_house?
        #true if all screens at this drive in are at capacity 
    end 

end


