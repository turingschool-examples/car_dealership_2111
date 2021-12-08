class Dealership

  attr_reader :inventory
  def initialize(name, address)
  @name = name
  @address = address
  @inventory = []
  @total_value = 0
  end

  def inventory_count
    @inventory.count
  end

  def add_car(car)
    @inventory << car
  end

  def has_inventory?
    @inventory.count > 1
  end

  def cars_by_make(maker)
    @inventory.each do |car|
    if  car.make == maker
      return car
    end
    end
  end

  def details
    details = Hash.new { |hash, key| hash[key] }
    @inventory.each do |car|
      @total_value += car.total_cost
      details["total_value"] = @total_value
      details["address"] = @address
    end
     return details
  end


end
