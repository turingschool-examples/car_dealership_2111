class Dealership
  attr_reader :inventory

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
  end

  def inventory_count
    @inventory.size
  end

  def add_car(car)
    @inventory << car
  end

  def has_inventory?
    @inventory != []
  end

  def cars_by_make(car_make)
    @inventory.select do |car|
      car_make == car.make
    end
  end

  def total_value
    total_cost_of_cars = 0
    @inventory.map do |car|
      total_cost_of_cars += car.total_cost
    end
    total_cost_of_cars
  end

  def details
    dealership_details = {}
    dealership_details["total_value"] = total_value
    dealership_details["address"] = @address
    dealership_details
  end 

end
