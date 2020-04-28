require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



### WRITE YOUR TEST CODE HERE ###



d1 = DriveIn.new("Brooklyn")
d2 = DriveIn.new("Manhattan")

m1 = MovieScreen.new("Avengers", 10, d1)
m2 = MovieScreen.new("Willy Wonka", 5, d1)
m3 = MovieScreen.new("Harry Potter", 5, d2)

c1 = Car.new(1, m1)
c2 = Car.new(2, m2)
c3 = Car.new(3, m3)
c4 = Car.new(2, m1)
c5 = Car.new(1, m2)
c6 = Car.new(1, m1)
c7 = Car.new(1, m3)
c8 = Car.new(1, m1)
c9 = Car.new(1, m2)
c10 = Car.new(1, m3)
c11 = Car.new(4)

binding.pry

0
