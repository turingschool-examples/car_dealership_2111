class Dealership
  attr_reader :name, :address, :inventory

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []

  end

  def has_inventory?
    @inventory.count > 0 ? true : false
  end

  def inventory_count
    @inventory.count
  end

  def add_car(new_car)
    @inventory << new_car
  end

  def cars_by_make(make)
    sorted_cars = inventory.select {|car| car.make == make}
  end
end
