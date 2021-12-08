class Dealership

  attr_reader :inventory
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
    @inventory.count > 1
  end

  def cars_by_make(maker)
    @inventory.each do |car|
    if  car.make == maker
      return car
    end
    end
  end

end
