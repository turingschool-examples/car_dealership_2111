class Dealership

  attr_reader :name, :address, :inventory, :inventory_count

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
    @inventory_count = 0
  end

  def add_car(car)
    @inventory << car # Shift argument into @inventory array
    @inventory_count = @inventory.length # Refresh value of @inventory_count
  end

  def has_inventory?
    if @inventory.length == 0
      false
    else
      true
    end
  end




end
