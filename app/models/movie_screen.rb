require 'pry' 

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
    @@all
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



end






