require './lib/car'

class Dealership
  attr_reader :name, :address, :inventory
  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []

  end

  def add_car(car)
    @inventory.push(car)
  end

  def inventory
    return @inventory
  end

  def inventory_count
    @inventory.count
  end

  def has_inventory?
   @inventory.count > 0
 end

 def cars_by_make(make)
   car_make = [] #accumulator
    @inventory.each do |car_block|
      if car_block.make == make
        car_make << car_block
      end
    end
    car_make
  end


end
