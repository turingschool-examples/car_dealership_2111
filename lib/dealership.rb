class Dealership
  attr_reader :name,
              :address,
              :inventory
  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
  end

  def inventory_count
    @inventory.size
  end

  def add_car(car)
    @inventory << car
  end

  def has_inventory?
     @inventory.size > 1
  end
end
