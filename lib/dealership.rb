class Dealership
  attr_reader :dealer_name,
              :address,
              :inventory,
              :inventory_count

  def initialize(dealer_name, address)
    @dealer_name      = dealer_name
    @address          = address
    @inventory        = []
    @inventory_count  = 0
  end

  def add_car(car)
    @inventory << car
    @inventory_count += 1
  end
end
