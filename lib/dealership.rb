class Dealership
  attr_reader :name, :address, :inventory, :inventory_count
  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
    @inventory_count = 0
  end

  def add_car(car)
    @inventory << car
    @inventory_count += 1
  end

  def has_inventory?
    if @inventory_count == 0
      false
    else
      true
    end
  end

  def cars_by_make(make)
    @inventory.select do |car|
      car.make == make
    end
  end

  def total_value
    @total = []
    @inventory.each do |car|
      @total << car.total_cost
    end
    @total.sum
  end

  def details
    # require 'pry'; binding.pry
    @dealership_info = {
      "total value" => @dealership.total_value,
      "address" => @dealership.address
    }
  end
end
