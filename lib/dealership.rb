class Dealership
  attr_reader :name, :address, :inventory, :inventory_count

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
    @inventory_count = 0
  end

  def add_car(car)
    @inventory << car
    @inventory_count += 1
  end


end
