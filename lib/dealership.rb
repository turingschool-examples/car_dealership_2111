class Dealership
  attr_reader :inventory
  def initialize(name, address)
    @address = address
    @inventory = []
  end

  def inventory_count
    @inventory.length
  end

  def add_car(car)
    @inventory << car
  end

  def has_inventory?
    inventory_count > 1
  end

  def cars_by_make(make)
    @inventory.find_all do |car|
      car.make == make
    end
  end

  def total_value
    @inventory.sum do |car|
      car.total_cost
    end
  end

  def details
    details = Hash.new
    details["total_value"] = total_value
    details["address"] = @address
    details
  end
end
