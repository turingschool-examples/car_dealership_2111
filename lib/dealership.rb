class Dealership
  attr_accessor :name, :address, :inventory

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
  end

  # Returns the total count of cars in inventory.
  def inventory_count
    @inventory.count
  end

  # Adds Car objects to the inventory array.
  def add_car(car_to_add)
    @inventory << car_to_add
  end

  # Check if there are greater than one Car in inventory.
  def has_inventory?
    inventory_count > 1
  end

  # Return all cars of the selected make.
  def cars_by_make(make_select)
    @inventory.find_all { |car| car.make == make_select}
  end

  # Return the total value of all cars in inventory.
  def total_value
    @inventory.sum(&:total_cost)
  end

  # Return a detail hash of the total value and address of the dealership.
  def details
    { "total_value" => total_value, 'address' => @address}
  end

  # Find the average price of cars in the inventory.
  def average_price_of_car
    # Assuming the average is under a million dollars.
    average_price = (total_value / inventory_count)
    if average_price >= 1000
      average_price.to_s.insert(-4, ',')
    else
      average_price.to_s
    end
  end

  # Return sorted array of cars from cheapest to most expensive.
  def cars_sorted_by_price
    @inventory.sort_by(&:total_cost)
  end

  # Create a hash of inventory sorted by make.
  def inventory_hash
    @inventory.group_by(&:make)
  end
end