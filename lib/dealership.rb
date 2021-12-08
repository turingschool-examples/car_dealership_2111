class Dealership
  attr_reader :name, :location

  def initialize(name, location)
    @name = name
    @location = location
  end

  def inventory
    @inventory = []
  end

  def inventory_count
    @inventory_count = 0
  end
end
