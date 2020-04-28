class Car
  attr_accessor :passenger_count
@@all = []
  def initialize(passenger_count)
    @passenger_count = passenger_count
    @current_movie_screen = current_movie_screen
    Car.all << self
  end

  def self.all
    @@all
  end


  def current_movie_screen=(movie_title, capacity, drive_in)
    MovieScreen.new(movie_title, capacity, drive_in, self)
  end
  
  def current_movie_screen
 
  #this method is named the same as above. it looks like i am  creating an attr reader and writer for current_movie_screen. 
  #but i dont understand why. i should just be creating a new movie screen and associating myself with it so that i can have a SSOT for all the data.
  
  end



end
