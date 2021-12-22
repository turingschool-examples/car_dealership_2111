class Dealership
  attr_reader :name, :address, :inventory

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
    !(inventory_count == 0)
  end

  def cars_by_make(make)
    inventory.find_all do |car|
      car.make == make
    end
  end

  def total_value
    inventory.sum do |car|
      car.total_cost
    end
  end

  def details
    details = {
      'total_value' => total_value,
      'address' => address
    }
  end

  def average_price_of_car
    average = inventory.map do |car|
      car.total_cost
    end

    format_number((average.sum / inventory.count))
  end

  def format_number(number)
    num_groups = number.to_s.chars.to_a.reverse.each_slice(3)
    num_groups.map(&:join).join(',').reverse
  end

  def cars_sorted_by_price
    inventory.sort_by do |car|
      car.total_cost
    end
  end

  def inventory_hash
    hash = {}
    inventory.map do |car|
      hash[car.make] = cars_by_make(car.make)
    end
    hash
  end
end
