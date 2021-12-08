class Dealership
  attr_reader :inventory, :address

  def initialize(name, address)
    @inventory = []
    @address = address
  end

  def inventory_count
    @inventory.count
  end

  def add_car(car)
    @inventory << car
  end

  def has_inventory?
    @inventory != []
  end

  def cars_by_make(make)
    by_make = []
    inventory.each do |car|
      by_make << car if car.make == make
    end
    return by_make
  end

  def total_value
    tv = 0
    inventory.each do |car|
      tv += car.total_cost
    end
    return tv
  end

  def details
    deets = {"total_value" => total_value, "address" => @address}
  end

  def average_price_of_car
    total_value / inventory_count
  end

  def cars_sorted_by_price
    sorted = @inventory.sort_by do |car|
      car.total_cost
    end
  end

  def inventory_hash
    makes = @inventory.map do |car|
      car.make
    end
    makes.uniq!
    hash = {}
    makes.each do |make|
      hash[make] = cars_by_make(make)
    end
    return hash
  end
end
