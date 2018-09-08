require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



kay = CarOwner.new("Kay")
richard = CarOwner.new("Richard")
bethany = CarOwner.new("Bethany")

oldbanger = Car.new("Old banger")
rolls = Car.new("Rolls Royce")
fiat500 = Car.new("Fiat 500")


lucy = Mechanic.new("Lucy", "Fiat 500")

fiat500.mechanic = lucy
kay.buy_cars("Fiat 500")


binding.pry
