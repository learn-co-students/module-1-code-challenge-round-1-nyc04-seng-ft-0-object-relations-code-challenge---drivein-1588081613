class DriveIn
  attr_reader :name 

  def initialize(name)
    @name = name 
  end 

  def screens 
    MovieScreen.all |movie_screen|
      movie_screen if movie_scren == self
    end 
  end 

end


# DriveIn
# DriveIn#initialize(name)
# A drive-in should be initialized with a name as a string.
# The name cannot be changed after the drive-in is initialized.
# DriveIn#name
# should return the name of the DriveIn

# DriveIn
# DriveIn#screens
# Returns an array of all movie screens at this drive-in.