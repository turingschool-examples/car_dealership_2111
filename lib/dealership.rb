require './lib/car'

class Dealership
  attr_reader :name, :addy, :inventory
  def initialize(name, addy)
    @name = name
    @addy = addy
    @inventory = []
  end

  def inventory_count
    return @inventory.count
  end

  def add_car(car)
    @inventory << car
  end

  def has_inventory?
    if @inventory == []
      return false
    else
      return true
    end
  end

  def cars_by_make(type)
    return @inventory.make(type)
  end

  def total_value
    @total = []
    @inventory.each do |value|
    @total << value.total_cost
    return @total
    end
  end

  def details
    @detals = {}
    @detals[total_value]
    @detals[@addy]
    return @details
  end



end
