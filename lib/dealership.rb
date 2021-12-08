class Dealership
  attr_reader :name, :address, :inventory
  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []

  end

  def inventory_count
    @inventory.count
  end

  def add_car(car)
    @inventory << car
  end

  def has_inventory?
    if @inventory.count > 0
      true
    else
      false
    end
  end

  def cars_by_make(make)
    cars_by_make = []
     @inventory.each do |car|
       if car.make == make
         cars_by_make << car
        end
     end
     return cars_by_make
  end

  def total_value
    total_value = 0
    @inventory.each do |car|
      total_value += car.total_cost
    end
    total_value
  end
  def details
    details = {
      "total_value" => total_value,
      "address" => @address
    }
  end
end
