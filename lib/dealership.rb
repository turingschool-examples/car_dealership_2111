class Dealership

  attr_reader :inventory
  def initialize(name, address)
  @name = name
  @address = address
  @inventory = []
  end
end
