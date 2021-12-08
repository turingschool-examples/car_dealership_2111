class Dealership
  attr_reader :inventory

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
  end

  def add_car(car)
    @inventory << car
  end

  def inventory_count
    @inventory.count
  end

  def has_inventory?
    inventory_count >= 1
  end

  def cars_by_make(make)
    cars_by_make = []
    @inventory.each do |car|
      if car.make == make
        cars_by_make << car
      end 
    end
    cars_by_make
  end

end
