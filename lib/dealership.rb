class Dealership

  attr_reader :name, :address, :inventory, :inventory_count, :total_value

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
    @inventory_count = 0
    @total_value = 0
  end

  def add_car(car)
    @inventory << car # Shift argument into @inventory array
    @inventory_count = @inventory.length # Refresh value of @inventory_count
  end

  def has_inventory?
    if @inventory.length == 0 # Check if inventory has length of 0, return false if such, true otherwise
      false
    else
      true
    end
  end

  def cars_by_make(make_name)

    @inventory.select do |car| # Search through array to find element's who's '.make' value == user input

      car.make == make_name

    end

  end

  def total_value

  @inventory.each do |cars| # Add total cost of a given car in our array to @total_value of our dealership
    @total_value += cars.total_cost
  end

  @total_value # Return updated @total_value

  end




end
