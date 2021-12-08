class Dealership
  attr_reader :name, :address, :inventory
  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
  end

  def inventory_count
    @inventory.length
  end

  def add_car(car)
    @inventory << car
  end

  def has_inventory?
    if inventory_count > 0
      true
    else
      false
    end
  end

  def cars_by_make(make)
    same_make = []
    @inventory.each do |inventory|
      if inventory.car.make == make
      @same_make << @inventory.car

     end
     return same_make
   end
 end

  def
end
