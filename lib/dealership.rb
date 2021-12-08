class Dealership
  attr_reader :name, :address

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
  end

  def has_inventory?
    !@inventory.empty?
  end

  def add_car(car)
    @inventory << car
  end
end
