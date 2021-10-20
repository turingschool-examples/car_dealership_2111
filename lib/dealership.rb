class Dealership

  attr_reader :inventory,
              :inventory_count

  def initialize(name, address)
    @inventory = []
    @inventory_count = 0
  end

  def add_car(car)
    @inventory << car
    @inventory_count += 1
  end

  def has_inventory?
    @inventory.count > 0
  end

  def cars_by_make(make)
    @inventory.find_all do |car|
      car.make == make
    end
  end
end
