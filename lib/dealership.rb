require './lib/car'

class Dealership
  attr_accessor :name, :address, :inventory, :count

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
    @count = 0
  end

  def add_car(car)
    @count += 1
    inventory << car
  end
end
