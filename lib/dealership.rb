require './lib/car'

class Dealership
  attr_reader :name, :address, :inventory

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
  end

  def add_car(car)
    @inventory << car
  end

  def inventory_count
    @inventory.count
  end

  def has_inventory?
    inventory_count > 0
  end

  def cars_by_make(make)
    @inventory.find_all do |car|
      car.make == make
    end
  end

  def total_value
    @inventory.map do |car|
      car.total_cost
    end.sum
  end

  def details
    {"total_value" => total_value,"address" => @address}
  end

  def average_price_of_car
    avg_cost = 0
    if inventory_count > 0
      avg_cost = total_value/inventory_count
    end
    text_avg_cost = avg_cost.to_s
    arr_avg_cost = text_avg_cost.chars.to_a
    temp_arr = []
    arr_avg_cost.reverse.each_slice(3) do |chars|
      temp_arr << chars.join()
    end
    return temp_arr.join(",").reverse
  end

  def cars_sorted_by_price
    sorted = @inventory.sort_by {|car| car.total_cost}
  end
end
