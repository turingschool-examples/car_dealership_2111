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
    if @inventory.length == 0
      false
    else
      true
    end
  end

  def cars_by_make(make)
    car_makes = []
    @inventory.each do |car|
      if car.make == make
        car_makes << car
      end
    end
    car_makes
  end
end
