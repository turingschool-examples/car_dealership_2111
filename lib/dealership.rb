class Dealership
  attr_reader :name,
              :address,
              :inventory

  def initialize(name, address)
    @name      = name
    @address   = address
    @inventory = []
  end

  def add_car(car)
    @inventory << car
  end

  def inventory_count
    @inventory.length
  end

  def has_inventory?
    if inventory_count >= 1
      true
    else
      false
    end
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
    details = {"total_value" => total_value,
               "address"     => @address}
  end

  def average_price_of_car
    numerator     = total_value
    denominator   = @inventory.length
    average_price = (numerator / denominator)
    result        = average_price.to_s.insert(-4, ",")
  end

  def cars_sorted_by_price
    @inventory.sort_by do |car|
      car.total_cost
    end
  end

  def inventory_hash
    keys = []
    @inventory.each do |car|
      keys << car.make
    end
    hash = {keys.uniq[0] => cars_by_make(keys.uniq[0]),
            keys.uniq[1] => cars_by_make(keys.uniq[1]),
            keys.uniq[2] => cars_by_make(keys.uniq[2])}
  end

end
