#
#
#
#
class Dealership

  attr_reader :name, :address, :inventory

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
    @total_val = 0
  end

  def inventory_count
    @inventory.count
  end

  def add_car(car)
    @inventory << car
  end

  def has_inventory?
    @inventory.count > 1
  end

  def cars_by_make(make)
    by_make = @inventory.select do |car|
      car.make == make
    end
    return by_make
  end

  def total_value
    # total = 0
    @inventory.each do |car|
      @total_val += car.total_cost
    end
    return @total_val
  end

  def details
    details = {
      "total_value" => @total_val,
      "address" => @address
    }
  end
end
