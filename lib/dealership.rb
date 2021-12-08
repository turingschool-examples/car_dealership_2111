class Dealership
  attr_reader :inventory, :inventory_count

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
    @inventory_count = @inventory.count
  end

end
