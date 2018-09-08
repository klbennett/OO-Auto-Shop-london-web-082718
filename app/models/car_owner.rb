# **CarOwner**
#
#   - Get a list of all owners
#
#   - Get a list of all the cars that a specific owner has
#
#   - Get a list of all the mechanics that a specific owner goes to
#
#   - Get the average amount of cars owned for all owners

class CarOwner

attr_accessor :car, :name

@@all = []

def initialize(name)
@name = name
@@all << self
end

def self.all
@@all
end

def list_cars
Car.all.select {|car| car.owner == self}
end


def buy_cars(classification)
new_car = Car.new("Fiat 500")
new_car.owner = self
end

def list_mechanics
self.list_cars.each {|car| car.mechanic }
end

def self.avg_cars_for_all_owners
# get all cars owned by everyone
# cars total / number of car owners
total = 0
self.all.each do |owner|
  total += owner.list_cars.length
end
total /= all.length
end



end
