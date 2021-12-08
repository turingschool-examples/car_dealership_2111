class Dealership
  attr_reader :name,
              :address

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
  end

  def inventory
    @inventory
  end

  def inventory_count
    inventory.count
  end

  def add_car(car)
    @inventory.push(car)
  end

  def has_inventory?
    if inventory_count > 0
     p true
    else
     p false
    end
  end

  def cars_by_make(make)
    make.count(make)
  end

  def total_value
    inventory_value = []
    @inventory.each do |total_cost|
      inventory_value << total_cost
    end
  end
end
