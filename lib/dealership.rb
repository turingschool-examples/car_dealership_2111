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
end
