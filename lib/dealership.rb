class Dealership
  attr_reader :name, :address, :inventory

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
  end

  def inventory_count
    inventory = 0
  end


  def add_car(car)
    @inventory << car
    inventory.count
  end

end
