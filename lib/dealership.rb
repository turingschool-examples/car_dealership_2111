class Dealership
  attr_reader :name, :address, :inventory, :car

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
  end

  def inventory_count
    inventory.count
  end

  def add_car(car)
    inventory << car
  end

  def has_inventory?
    return false if inventory.count == 0
  end

  def cars_by_make(make)
    inventory.find_all do |car|
      car.make == make
    end
  end

  def total_value
    sum = inventory.map do |car|
      car.total_cost
    end
    sum.sum
  end

  def details
    deatils = {
      address: address,
      total_value: total_value
    }
  end
end
