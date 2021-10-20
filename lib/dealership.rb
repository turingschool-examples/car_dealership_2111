class Dealership
  attr_reader   :name,
                :address,
                :inventory,
                :inventory_count
  def initialize(name, address)
    @name            = name
    @address         = address
    @inventory       = []
    @inventory_count = 0
  end

  def add_car(car)
    @inventory << car
    @inventory_count += 1
  end

  def has_inventory?
    if @inventory.count > 0
      true
    else
      false
    end
  end

  def cars_by_make(maker)
    @inventory.find_all do |car|
      car.make == maker
    end
  end

  def total_value
    total_prices = []
    @inventory.each do |car|
      total_prices << car.monthly_payment * car.loan_length
    end
    total_prices.sum
  end

  def details
    {"total_value" => total_value,
      "address" => @address}
  end


end