class MovieScreen
  attr_reader :capacity, :movie_title, :drive_in  
  @@all_screens=[]

  def initialize(movie_title, capacity, drive_in,car)
    @movie_title = movie_title
    @capacity = capacity
    @drive_in = drive_in
    @car=car
    MovieScreen.all_screens << self
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

  def self.all_screens
    @@all_screens
  end

  # def cars
  #   Car.all.select do |cars|
  #     info.passenger_count == self
  #   end
  # end


 








end
