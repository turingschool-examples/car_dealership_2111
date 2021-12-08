class Dealership
  attr_reader :inventory
  def initialize(argument_1, argument_2)
    @argument_1 = argument_1
    @argument_2 = argument_2
    @inventory = []
  end

  def inventory_count
    @inventory.count
  end

  def add_car(car)
    @inventory << car
  end

  def has_inventory?
    @inventory = []
      false
  end
end
