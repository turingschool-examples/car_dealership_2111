class Dealership
  attr_reader :name, :location, :inventory

  def initialize(name, location)
    @name = name
    @location = location
    @inventory = []
  end

  def inventory_count
    @inventory.size
  end

  def add_car(car)
    @inventory << car
  end
#iteration_3
  def cars_by_make(make)
    cars = []
    @inventory.each do |car|
      if car.make == make
        cars << car
      end
    end
    cars
  end

end
