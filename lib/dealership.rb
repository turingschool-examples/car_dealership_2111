class Dealership
  attr_accessor :inventory, :name, :location

  def initiailize(name, location)
    @name = name
    @location = location
    @inventory = []
  end

  def inventory_count
    @inventory.length
  end 


end
