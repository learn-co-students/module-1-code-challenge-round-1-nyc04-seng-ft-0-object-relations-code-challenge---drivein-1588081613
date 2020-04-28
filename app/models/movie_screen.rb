class MovieScreen
  attr_reader :capacity, :movie_title, :drive_in  

  @@all = []
  def initialize(capacity, drive_in, movie_title)
    @movie_title = movie_title
    @capacity = capacity
    @drive_in = drive_in
    MovieScreen.all << self
  end

  def self.all
    @@all
  end

  def movie_title
    self
  end

end


#initializes with movie_title, capacity, and drive-in
  #can only read capacity, movie_title, and drive_in

#deliverables
#movie_titel is a string, #capacity is an integer, #drive in is an object
##movie_title returns title
#capcity returns capacity
#drivein retuns drive in associated with this movie_screen
#.all_screens returns all movie screens 
#cars - returns array of all cars