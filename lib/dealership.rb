require './lib/car'

class Dealership
  attr_accessor :name, :address, :inventory, :count

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
    @count = 0
  end

  def add_car(car)
    @count += 1
    inventory << car
  end

  def has_inventory?
    !@inventory.empty?
  end

  def cars_by_make(make)
    @inventory.select {|car| car.make == make}
  end

  def total_value
    @inventory.inject(0) {|agg, car| agg + car.total_cost}
  end

  def details
    dealership_info = Hash.new
    dealership_info['address'] = self.address
    dealership_info['total_value'] = self.total_value
    dealership_info
  end
end
