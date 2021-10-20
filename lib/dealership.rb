class Dealership
  attr_reader :name, :address, :inventory, :total_value

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
    @total_value = 0
  end

  def has_inventory?
    @inventory.count > 0 ? true : false
  end

  def inventory_count
    @inventory.count
  end

  def add_car(new_car)
    @inventory << new_car
    @total_value += new_car.total_cost
  end

  def cars_by_make(make)
    sorted_cars = inventory.select {|car| car.make == make}
  end

  def details
    dealership = {
      'total_value' => @total_value,
      'address' => @address
    }
  end

  #instead of setting up a loop to tally this, created a inventory_value counter that tracks total value
  def average_price_of_car
    (@total_value/inventory_count).to_s.insert(2, ',')
  end

  def cars_sorted_by_price
    @inventory.sort_by {|car| car.total_cost}
  end

  #group_by will assign each car object to the car's make condition we set
  def inventory_hash
    inventory.group_by {|car| car.make}
  end
end
