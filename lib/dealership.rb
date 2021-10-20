class Dealership
  attr_reader :name,
              :address,
              :inventory

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
  end

  def add_car(car_instance)
    @inventory << car_instance
  end

  def inventory_count
    @inventory.length
  end

  def cars_by_make(make_of_car)
    @inventory.find_all do |car|
      car.make == make_of_car
    end
  end

  def total_value
    @inventory.sum do |car|
      car.total_cost
    end
  end

  def details
    details_hash ={
      "total_value" => total_value,
      "address" => @address
    }
    details_hash
  end
end
