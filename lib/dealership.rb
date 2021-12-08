require 'rspec'
require './lib/car'
require './lib/dealership'
require 'pry'

class Dealership
  attr_reader :name, :address, :inventory, :inventory_count, :total_value

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
    @inventory.push car
    @total_value += car.total_cost
  end

  def has_inventory?
    if @inventory.count != 0
      p true
    else
      p false
    end

  end

  def cars_by_make(make)
    make_array = []
    @inventory.each do |car|
      if car.make == make
        make_array.push car
      end
    end
    return make_array
  end

  # def total_value
  #   @total_value = 156000
  # end

  def details
    details_hash = {
      "total_value" => @total_value,
      "address" => @address
    }
    return details_hash
  end

  def average_price_of_car
    avg_price = @total_value / (@inventory.count)
    # return avg_price.to_s
  end

  def cars_sorted_by_price
    sorted_cars = []
    

  end

end
