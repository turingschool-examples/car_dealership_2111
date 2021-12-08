require 'active_support'
require 'active_support/core_ext/numeric/conversions'
require 'pry'


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
    return true if @inventory.count > 0
    false
  end

  def cars_by_make(make)
    @inventory.select { |car| car if car.make == make }
  end

  def total_value
    total = 0
    @inventory.each { |car| total += car.total_cost}
    total
  end

  def details
    @deets = { "total_value" => total_value,
               "address" => @address}
  end

  def average_price_of_car
    average = total_value / inventory_count
    average.to_s(:delimited)
  end

  def cars_sorted_by_price
    @inventory.sort_by { |car| car.total_cost }
  end

  def inventory_hash
    hash = {"Ford" => cars_by_make("Ford"),
      "Toyota" => cars_by_make("Toyota"),
      "Chevrolet" => cars_by_make("Chevrolet") }
  end
end
