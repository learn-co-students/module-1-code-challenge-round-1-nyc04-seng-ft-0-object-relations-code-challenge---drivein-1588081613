class DriveIn

    attr_reader :name

    def initialize(name)
        @name = name
    end
    def name
        self.name
    end
end

# DriveIn
# DriveIn#initialize(name)
# A drive-in should be initialized with a name as a string.
# The name cannot be changed after the drive-in is initialized.

# DriveIn#name
# should return the name of the DriveIn