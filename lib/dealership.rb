class Dealership
  attr_accessor :inventory, :name, :location

  def initialize(name, location)
    @name = name
    @location = location
    @inventory = []
  end

  def inventory_count
    @inventory.length
  end

  def add_car(car)
    @inventory << car
  end

  def has_inventory?
    if inventory_count == 0
      false
    else
      true
    end
  end

  def cars_by_make(string)
    cars_with_matching_make = []
    @inventory.each do |car|
      if car.make == string
        cars_with_matching_make << car
      end
    end
    return cars_with_matching_make
  end

end
