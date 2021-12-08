class Dealership
  attr_reader :dealership, :address, :inventory,
  :inventory_count
  def initialize(dealership, address)
    @dealership = dealership
    @address = address
    @inventory = []
    @inventory_count = 0
  end

  def add_car
    @inventory << @car
  end
end
