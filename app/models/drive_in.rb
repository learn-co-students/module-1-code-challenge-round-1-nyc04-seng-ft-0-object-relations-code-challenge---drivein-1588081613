require 'pry'

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

end

binding.pry 
