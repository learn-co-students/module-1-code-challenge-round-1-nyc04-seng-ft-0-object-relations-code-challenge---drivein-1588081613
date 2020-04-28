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
            ms.drivein == self
    end



end
