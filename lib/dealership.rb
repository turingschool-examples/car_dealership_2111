class Dealership
  attr_accessor :inventory

  def initialize(dealership, address)
    @dealership = dealership
    @address = address
    @inventory = []
  end


end
