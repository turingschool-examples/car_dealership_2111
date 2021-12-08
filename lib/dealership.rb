class Dealership
  attr_accessor :inventory, :name, :location

  def initialize(name, location)
    @name = name
    @location = location
    @inventory = []
  end

  def inventory_count
    @inventory.length
  end

  def add_car(car)
    @inventory << car
  end

  def has_inventory?
    @inventory_count == 0 
  end

end
