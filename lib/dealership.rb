class Dealership
  attr_reader :name, :address, :inventory
  def initialize(name, address, inventory = [])
    @name = name
    @address = address
    @inventory = []
  end

  def inventory_count
    inventory.count
  end

  def add_car(car)
    @inventory <<  car
  end

  def has_inventory?
    if inventory.count == 0
      false
    else
      true
    end
  end

  def cars_by_make(make)
    @inventory.select do |car|
      car.make == make
    end
  end

  def total_value
    @inventory.map do |car|
       car.total_cost
    end.inject(:+)
  end

  def details
    detail_list = {
      "total_value" => total_value,
      "address" => @address
    }
  end

  def average_price_of_car
    average = (total_value) / (inventory_count)
    average.to_s.split('').reverse.insert(3, ',').reverse.join
  end

  def cars_sorted_by_price
    price_list = []
    inventory.each do |car|
      price_list << car.total_cost
    end
    price_list.sort
  end

  def inventory_hash
    inventory_by_make = {
      "Ford" => cars_by_make("Ford"),
      "Toyota" => cars_by_make("Toyota"),
      "Chevrolet" => cars_by_make("Chevrolet")
    }
  end
end
