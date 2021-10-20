class Dealership
  attr_accessor :name, :address, :inventory, :inventory_count, :car
  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
    @inventory_count = 0
  end

  def add_car(car)
    @inventory << car
    @inventory_count += 1
  end

  def cars_by_make(make)
    @inventory.select do |make|
      if car.make == make

      end
    end
  end
end
