class Dealership

  attr_reader :inventory,
              :inventory_count

  def initialize(name, address)
    @inventory = []
    @inventory_count = 0
  end
end
