class Dealership
  attr_reader :name, :location, :inventory
  def initialize(name, location)
    @name = name
    @location = location
    @inventory = []
    @number_in_inventory = 0
  end

  def add_car(car)
    @inventory << car.make + " " + car.model # I know this is a SUPER round about way, but the @make_and_model wasn't working.
    @number_in_inventory += 1
  end

  def inventory_count
    p @number_in_inventory
  end
end
