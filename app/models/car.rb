# **Car**
#
#   - Get a list of all cars
#
#   - Get a list of all car classifications
#
#   - Get a list of mechanics that have an expertise that matches the car classification

class Car

attr_accessor :classification, :owner, :mechanic

@@all = []
@@classifications = []

def initialize(classification)
@@classifications << classification
@owner = nil
@@all << self
end

def expertise
Mechanic.all.select do |mechanic|
mechanic.expertise == self.classification
end
end

def self.classifications
  @@classifications.uniq
end


def self.all
@@all
end

end
