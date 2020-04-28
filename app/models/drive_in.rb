class DriveIn

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def name
        @name
    end

    def screens
        MovieScreen.all_screens.map {|x| x.drive_in == self}
    end

end
