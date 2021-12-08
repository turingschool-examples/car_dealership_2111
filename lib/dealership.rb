class Dealership
  attr_reader :dealership
  def initialize(dealership, address)
    @dealership = dealership
    @address = address
    @inventory = []
    @inventory_count = 0
  end
end
