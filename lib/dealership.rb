class Dealership

  attr_reader :name, :address, :inventory, :inventory_count, :dealership_value

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
    @inventory_count = 0
    @dealership_value = 0
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

  combined_values = 0
  @inventory.each do |cars| # Add total cost of a given car in our array to @total_value of our dealership
    combined_values += cars.total_cost
  end

  @dealership_value = combined_values # Return updated @total_value

  end

  def details # This one is a bit messy
    dealership_details = {

      "total_value" => self.total_value, # runs '.total_value' method on self to get most current value from existing inventory
      "address" => @address

    }
  end

  def average_price_of_car

    self.total_value / @inventory.count # Divide total value by total amount of cars
      # Note: Not sure how to get this to return as string with a comma in the appropriate location (yet)
  end






end
