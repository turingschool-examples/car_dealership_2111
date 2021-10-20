class Dealership

  attr_reader :name,
              :address,
              :inventory,
              :inventory_count

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
    @inventory_count = 0
  end

  def add_car(car)
    @inventory << car
    @inventory_count += 1
  end

  def has_inventory?
    @inventory.count > 0
  end

  def cars_by_make(make)
    @inventory.find_all do |car|
      car.make == make
    end
  end

  def total_value
  value = 0
    @inventory.each do |car|
      value += car.total_cost
    end
  value
  end

  def details
    details = Hash.new
    details.store("total_value",total_value)
    details.store("address", address)
    details
  end
end
