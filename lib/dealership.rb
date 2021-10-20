class Dealership

  attr_reader :name, :address, :inventory

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
  end

  def inventory_count
    @inventory.length
  end

  def has_inventory?
    @inventory.length >= 1
  end

  def add_car(car)
    @inventory << car
  end

  def cars_by_make(make)
    cars_by_make_catcher = []
    @inventory.each do |car|
      if car.make == make
        cars_by_make_catcher << car
      end
    end
    cars_by_make_catcher
  end

  def total_value
    total_inventory_value = 0
    @inventory.each do |car|
      total_inventory_value += car.total_cost
    end
    total_inventory_value
  end

  def details
    dealer_details = {
      "total_value" => total_value,
      "address" => @address
    }
  end

end
