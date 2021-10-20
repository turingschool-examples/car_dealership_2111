class Dealership
  attr_reader :inventory,
              :inventory_count,
              :address
  def initialize(name, address)
    @name            = name
    @address         = address
    @inventory       = []
  end

  def inventory_count
    @inventory.count
  end

  def add_car(car)
    @inventory << car
  end

  def has_inventory?
    inventory_count > 0
  end

  def cars_by_make(make)
    @inventory.find_all do |car|
      car.make == make
    end
  end

  def total_value
    @inventory.sum do |car|
      car.total_cost
    end
  end

  def details
    dealer_details = {"total_value" => total_value, "address" => @address}
  end

  def average_price_of_car
    (total_value / inventory_count).to_s
  end
end