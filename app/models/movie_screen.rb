class MovieScreen
  attr_reader :capacity, :movie_title, :drive_in, :car

  @@all = []
  def initialize(movie_title, capacity, drive_in, car)
    @movie_title = movie_title
    @capacity = capacity
    @drive_in = drive_in
    @car = car
    MovieScreen.all_screens << self
  end

  def self.all_screens
    @@all
  end

  def movie_title
    MovieScreen.all_screens.select do |movie|
      movie.movie_title #method calling the method
    end
  end

  def capacity
    MovieScreen.all.map do |movie|
      movie.capacity#method calling the method
    end
  end

  def drive_in
    MovieScreen.all_screens.select do |movie|
      movie.drive_in #method calling the method
    end
  end

  def cars 
    MovieScreen.all.select do |movie|
      movie.cars #method calling the method
    end
  end

end


#initializes with movie_title, capacity, and drive-in
  #can only read capacity, movie_title, and drive_in

#join model because drive in has many cars through movie screen but car is only at one drivein
  #missing the connection between car and movie_screen
  #car can't be because drive-in is already in the parameters for movie-screen
  #this initialize already has drive_in and capacity of drive in 

#deliverables
#movie_titel is a string, #capacity is an integer, #drive in is an object
##movie_title returns title
#capcity returns capacity
#drivein retuns drive in associated with this movie_screen
#.all_screens returns all movie screens 
#cars - returns array of all cars