class DriveIn
    attr_reader :name         
    
    def initialize(name)
        @name = name 
    end
    def name
        DriveIn.map do |v|
            v.name
    end
end

end
