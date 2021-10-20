class Dealership

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
    @car = [@car_1, @car_2]
  end

  def inventory
    @inventory = []
  end

  def inventory_count
    puts @inventory.length
  end

  def add_car
  
  end

end
