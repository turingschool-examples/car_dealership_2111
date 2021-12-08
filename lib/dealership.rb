require 'pry'
class Dealership
  attr_reader :inventory
  def initialize(argument_1, argument_2)
    @argument_1 = argument_1
    @argument_2 = argument_2
    @inventory = []
  end

  def inventory_count
    @inventory.count
  end

  def add_car(car)
    @inventory << car
  end

  def has_inventory?
    @inventory = []
      false
  end

  def cars_by_make(make)
    car_make = []
    @inventory.each do |car|
      if car.make == make
        car_make << car
      end
    end
    car_make
  end

  def total_value
    total = []
    @inventory.find_all do |car|
      total << car.total_cost
    end
    total.sum
  end

  def average_price_of_car
    (total_value / (@inventory.size))
  end
end
