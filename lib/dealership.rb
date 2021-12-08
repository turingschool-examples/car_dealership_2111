class Dealership
  attr_reader :inventory
  def initialize(dealership, address)
    @dealership = dealership
    @address = address
    @inventory = []
  end

  def inventory_count
    0
  end

end
