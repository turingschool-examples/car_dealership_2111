class Dealership
  attr_accessor :inventory, :inventory_count

  def initialize(dealership, address)
    @dealership = dealership
    @address = address
    @inventory = []
    @inventory_count = @inventory.size
  end



end
