class Dealership
  attr_reader :inventory

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
  end

  def add_car(car)
    @inventory << car
  end

  def inventory_count
    @inventory.count
  end

  def has_inventory?
    inventory_count >= 1
  end

  def cars_by_make(make)
    cars_by_make = []
    @inventory.each do |car|
      if car.make == make
        cars_by_make << car
      end
    end
    cars_by_make
  end

  def total_value
    total_value = 0
    @inventory.each do |car|
      total_value += car.total_cost
    end
    total_value
  end

  def details
    details = {}
    details["total_value"] = total_value
    details["address"] = @address
    details
  end

  def average_price_of_car
    average_price = total_value / inventory_count
    average_price.to_s.insert(-4, ",")
  end

  def cars_sorted_by_price
    inventory.sort_by do |car|
      car.total_cost
    end
  end

  def inventory_hash
    inventory_hash = {}
    inventory.each do |car|
      inventory_hash[car.make] = car
    end
    inventory_hash
  end
end
