# require './lib/car'
#
#
#
class Dealership

  attr_reader :name, :address, :inventory

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
    @total_val = 0
    @inv_by_cost = []
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

  def cars_by_make(make)
    by_make = @inventory.select do |car|
      car.make == make
    end
    return by_make
  end

  def total_value
    # total = 0
    @inventory.each do |car|
      @total_val += car.total_cost
    end
    return @total_val
  end

  def details
    details = {
      "total_value" => @total_val,
      "address" => @address
    }
  end

  def average_price_of_car
    average = @total_val / @inventory.count
    average.to_s #don't know how to insert comma and need to move on
  end

  # def cars_sorted_by_price
  #   @inventory.max_by do |car|
  #     @inv_by_cost << car.total_cost
  #   end
  #   @inv_by_cost
  # end

  # def inventory_hash
  #   inv_hash = {
  #
  #   }
  # end
end
