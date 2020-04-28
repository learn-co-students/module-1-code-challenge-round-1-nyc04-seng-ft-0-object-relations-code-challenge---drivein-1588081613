class DriveIn
    @@all = []
    attr_reader :name
    def initialize(name)
        @name = name

        DriveIn.all<<self
    end

    def self.all
        @@all
    end
end
