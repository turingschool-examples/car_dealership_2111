require './lib/car'
class Dealership
  attr_reader :inventory

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
    @inventory.size > 0 ? true : false
  end

  def cars_by_make(make)
    @inventory.select { |car| car.make == make }
  end
end
