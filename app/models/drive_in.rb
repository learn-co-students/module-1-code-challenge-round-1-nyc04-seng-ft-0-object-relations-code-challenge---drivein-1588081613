require 'pry'

class DriveIn

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def screens
        @@all
    end
# binding.pry
end






