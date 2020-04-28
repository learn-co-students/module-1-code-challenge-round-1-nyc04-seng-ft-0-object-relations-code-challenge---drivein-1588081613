class MovieScreen
  attr_reader :capacity, :movie_title, :drive_in  
  attr_accessor :cars 
  @@all_screens = []
  
  
  def initialize(movie_title, capacity, drive_in)
    @movie_title = movie_title
    @capacity = capacity
    @drive_in = drive_in
    @cars = []
    MovieScreen.all << self 
  end

  def self.all_screens 
    @@all_screens
  end 

  def movie_title
    @movie_title 
  end 

  def capacity
    @capacity 
  end 

  def drive_in
    @drive_in 
  end 

  def self.cars 
    @cars 
  end 

  def self.number_of_viewers
   self.cars.count 
  end 

  def self.at_capacity?
    self.cars.count >= self.capacity 
  end 

  def self.available_spots 
    self.capacity - self.number_of_viewers
  end 

  def self.add_car(car) 
    # if screen not at cap, update car's screen and return string "enjoy"
    if self.at_capacity? != true 
      car.movie_screen = self
    else nil 
 
    end 
  
  end 

end






