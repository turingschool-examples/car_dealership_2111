class Dealership
  attr_reader :name, :address, :inventory

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
    @inventory_value = 0
  end

  def has_inventory?
    @inventory.count > 0 ? true : false
  end

  def inventory_count
    @inventory.count
  end

  def add_car(new_car)
    @inventory << new_car
    @inventory_value += new_car.total_cost
  end

  def cars_by_make(make)
    sorted_cars = inventory.select {|car| car.make == make}
  end

  def average_price_of_car
    (@inventory_value/inventory_count).to_s.insert(2, ',')
  end
end
