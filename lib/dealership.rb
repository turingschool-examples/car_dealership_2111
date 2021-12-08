class Dealership

  attr_reader :inventory
  def initialize(name, address)
  @name = name
  @address = address
  @inventory = []
  end

  def inventory_count
    @inventory.count
  end

  def add_car(car)
    @inventory << car
  end

  def has_inventory?
    @inventory.count > 1
  end
end
