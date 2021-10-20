class Dealership
  attr_reader :name, :location, :inventory, :total_value
  def initialize(name, location)
    @name = name
    @location = location
    @inventory = []
    @number_in_inventory = 0
    @total_value = 0
  
  end

  def add_car(car)
    @inventory << car.make + " " + car.model # I know this is a SUPER round about way, but the @make_and_model wasn't working.
    @number_in_inventory += 1
    @total_value += car.total_cost
  end

  def inventory_count
    p @number_in_inventory
  end

  def has_inventory?
    if @number_in_inventory > 0
      true
    else
      false
    end
  end

  def cars_by_make(make) #Dont know why this doesnt work...
    @inventory.select do |car|
      car.make == make
    end
  end

  def total_value
    p @total_value
  end

  def details
    details = {'total_value' => @total_value, 'address' => @location}
    p details
  end
end
