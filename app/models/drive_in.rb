class DriveIn

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def screens
        MovieScreen.all_screens.select do |x|
            x.drive_in == self
        end
    end

    def whats_playing
        screens.map do |x|
            x.movie_title
        end
    end

    # def full_house?
    #     capacity = screens.map do |x|
    #         # binding.pry
    #         x.movie_screen.capacity
    #         # binding.pry
    #     end.to_i
    #     binding.pry
    #     passenger = screens.map do |x|
    #         x.passenger_count
    #     end.to_i
    #     binding.pry


    # end




end
