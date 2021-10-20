class Dealership
  attr_accessor :inventory, :inventory_count

  def initialize(dealership, address)
    @dealership = dealership
    @address = address
    @inventory = []
    # @inventory_count = @inventory.size # why can't I do this?
  end

  def add_car(car)
    @inventory.push(car)
  end

  def inventory_count
    @inventory.size
  end



end
