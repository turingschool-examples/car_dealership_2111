class Dealership
  attr_reader :name, :address, :inventory, :inventory_count, :dealership_value

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
    @inventory_count = 0
    @dealership_value = 0
  end

  def add_car(car)
    @inventory << car
    @inventory_count += 1
  end

  def has_inventory?
    @inventory_count > 0
  end

  def cars_by_make(chosen_make)
    @inventory.find_all do |car|
      car.make == chosen_make
    end
  end

  def total_value_helper
    @inventory.map do |car|
      car.total_cost
    end
  end

  def total_value
    total_value_helper.sum
  end

  def details
    details_hash = Hash["total_value"=>total_value, "address"=> address]
  end

  def average_price_of_car
    total_value/ inventory_count
  end

  def cars_sorted_by_price
    #they already are 
    @inventory
  end
end
