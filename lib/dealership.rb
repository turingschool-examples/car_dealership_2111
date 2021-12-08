class Dealership
  attr_reader :name, :addy, :inventory
  def initialize(name, addy)
    @name = name
    @addy = addy
    @inventory = []
  end

  def inventory_count
    return @inventory.count
  end

  def add_car(car)
    @inventory << car
  end

end
