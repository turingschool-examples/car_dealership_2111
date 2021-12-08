class Dealership
  attr_reader :name, :location, :inventory

  def initialize(name, location)
    @name = name
    @location = location
    @inventory = []
  end
end
