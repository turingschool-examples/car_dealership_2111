class Dealership
  attr_reader :inventory
  def initialize(name, location)
    @name = name
    @location = location
    @inventory = []
    @inventory_count = 0
  end

  def add_car(car)
    @inventory << car
  end

  def inventory_count
    @inventory.size
  end
end
