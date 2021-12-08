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
end
