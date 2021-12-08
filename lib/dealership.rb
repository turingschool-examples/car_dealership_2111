class Dealership
  attr_accessor :inventory, :name, :location, :lot_value

  def initialize(name, location)
    @name = name
    @location = location
    @inventory = []
    @lot_value = 0
  end

  def inventory_count
    @inventory.length
  end

  def add_car(car)
    @inventory << car
  end

  def has_inventory?
    if inventory_count == 0
      false
    else
      true
    end
  end

  def cars_by_make(string)
    cars_with_matching_make = []
    @inventory.each do |car|
      if car.make == string
        cars_with_matching_make << car
      end
    end
    return cars_with_matching_make
  end

  def total_value
    @inventory.each do |car|
      @lot_value += car.total_cost
    end
    return @lot_value
  end

  def details
    details_hash = {}
    details_hash['total_value']= @lot_value
    details_hash['address']= @location
    return details_hash
  end

  def average_price_of_car
    @lot_value / inventory_count
  end

  def cars_sorted_by_price
    @inventory.sort_by{ |car| car.total_cost_of_car }
  end

end
