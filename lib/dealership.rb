class Dealership
  attr_reader :dealer_name, :address, :inventory
  def initialize(dealer_name, address)
    @dealer_name = dealer_name
    @address = address
    @inventory = []
  end

  def inventory_count
    @inventory.length
  end

  def add_car(car)
    @inventory << car
  end

  def has_inventory?
    @inventory.length > 0
  end

  def cars_by_make(make)
    @inventory.select {|car_make| car_make.make == make}
  end

  def total_value
    # Grabs the total cost of each car and adds
    # the total value of all of them
    total = @inventory.map {|value| value.total_cost}
    total.reduce(:+)
  end

  def details
    hash = {}
    t_value = total_value
    dealer_address = @address
    hash["total_value"] = t_value
    hash["address"] = dealer_address
    hash
  end

  def average_price_of_car
    total_value / @inventory.length
  end

  ##### not complete####### vvv
  def cars_sorted_by_price
    total = @inventory.select {|value| value.monthly_payment}
    total
  end

  def inventory_hash

  end
end
