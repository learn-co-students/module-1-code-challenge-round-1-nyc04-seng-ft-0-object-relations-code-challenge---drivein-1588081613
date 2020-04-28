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

  def movies
    MovieScreen.all_screens.select do |movie|
      movie
    end
  end
  def movie_title
    MovieScreen.all_screens.select do |movie|
      movie.movie_title
    end
  end

  # def capacity
  #   binding.pry
  #   MovieScreen.all.map do |movie|
  #     binding.pry
  #     movie.capacity
  #   end
  # end

  # def drive_in
  # end

  def cars
    binding.pry
    Car.all.select do |car|
      binding.pry
    end
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