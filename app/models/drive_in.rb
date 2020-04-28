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
end
