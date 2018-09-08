# **Mechanic**
#
#   - Get a list of all mechanics
#
#   - Get a list of all cars that a mechanic services
#
#   - Get a list of all the car owners that go to a specific mechanic
#
#   - Get a list of the names of all car owners who
#   go to a specific mechanic

class Mechanic


attr_accessor :car, :car_owner, :expertise


@@all = []

def initialize(name, expertise=nil)
@name = name
@@all << self
end

def self.all
@@all
end

def cars
Car.all.select do |car|
  car.mechanic == self
end
end

def car_owners
cars.map do |car|
  car.owner
end
end

def car_owner_names
cars.map do |car|
car.owner.name
end
end

end
