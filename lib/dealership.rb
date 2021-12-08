class Dealership
  attr_reader :inventory, :inventory_count
  def initialize(name, location)
    @name = name
    @location = location
    @inventory = []
    @inventory_count = 0
  end
end
