require './lib/car'

class Dealership

  attr_reader :name, :address, :inventory

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
  end

  def inventory_count
    @inventory.length
  end

  def add_car(car)
    @inventory.push(car)
    return nil
  end

  def has_inventory?
    @inventory.length >= 1
  end

  def cars_by_make(make)
    @inventory.find_all do |car|
      make == car.make
    end
  end

  def total_value
    total_value = 0
    @inventory.each do |car|
      total_value += car.total_cost
    end
    total_value
  end

  def details
    {
      "total_value" => self.total_value,
      "address" => self.address
    }
  end

  def average_price_of_car
    (self.total_value / @inventory.length).to_s
  end

  def cars_sorted_by_price
    @inventory.sort_by do |car|
      car.total_cost
    end
  end

end
