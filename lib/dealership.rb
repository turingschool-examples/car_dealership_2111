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

  def cars_by_make(make)
    @inventory.select { |car| car.make == make }
  end
end
