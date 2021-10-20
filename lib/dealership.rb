require './lib/car'

class Dealership
  attr_reader :name, :address, :inventory

  # initialize
  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
  end

  #add car
  def add_car(car)
    @inventory << car
  end

  # check inventory
  def inventory_count
    @inventory.count
  end

  # check if inventory is 0 or not
  def has_inventory?
    inventory_count > 0
  end

  # return an array of cars of specified make. allow any inventory to be used.
  def cars_by_make(make, inventory)
    inventory.find_all do |car|
      car.make == make
    end
  end

  # return total value
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

  def cars_sorted_by_price(inventory)
    sorted = inventory.sort_by {|car| car.total_cost}
  end

  def get_makes
    makes = []
    @inventory.each do |car|
      if !makes.include?(car.make)
        makes << car.make
      end
    end
    return makes.sort
  end

  def inventory_hash
    # gather all makes
    makes = get_makes
    hash = Hash.new()
    #cycle through each make, sort by car price, and add to hash.
    makes.each do |make|
      hash[make] = cars_sorted_by_price(cars_by_make(make, @inventory))
    end
    hash
  end
end
