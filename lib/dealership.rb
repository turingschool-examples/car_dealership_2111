class Dealership
  attr_reader :inventory,
              :inventory_count

  def initialize(name, location)
    @name = name
    @location = location
    @inventory = []
    @inventory_count = 0
  end

  def add_car(new_car)
    @inventory << new_car
    @inventory_count += 1
  end

  def has_inventory?
    @inventory_count > 1
  end

  def cars_by_make(make)
    selected_cars = @inventory.select do |car|
      car.type.split(' ')[0] == make
    end
  end

  def total_value
    inventory_value = @inventory.map do |car|
       [car.total_cost].sum
     end
   end
end
