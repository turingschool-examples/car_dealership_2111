require 'rspec'
require './lib/car'
require './lib/dealership'
require 'pry'

class Dealership
  attr_reader :name, :address, :inventory, :inventory_count

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
  end

  def inventory_count
    @inventory.count
  end

  def add_car(car)
    @inventory.push car

  end

end
