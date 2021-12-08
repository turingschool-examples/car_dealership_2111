class Dealership
  attr_reader :name,
              :address,
              :inventory,
              :inventory_count

  def initialize(name, address)
    @name            = name
    @address         = address
    @inventory       = []
    @inventory_count = 0
  end

  def add_car(car)
    @inventory << car
    @inventory_count += 1
  end

  def has_inventory?
    @inventory_count > 0
  end

  def cars_by_make(make)
    @inventory.select do |car|
      car.make == make
    end
  end

  def total_value
    @inventory.sum do |car|
      car.total_cost
    end
  end

  def details
    {
    "total_value" => total_value,
    "address" => @address
    }
  end

  def average_price_of_car
    average = @total_value / @inventory_count
    average.to_s.insert(2, ",")

  end

  def cars_sorted_by_price
    @inventory.sort_by do |car|
      car.total_cost
    end
  end

  def inventory_hash
  end
end
