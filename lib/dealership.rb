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

  def average_price_of_car
    average_price = total_value / @inventory.count
    average_price.to_s.reverse.scan(/\d{3}|.+/).join(",").reverse
  end

  def cars_sorted_by_price
    @inventory.sort_by do |car|
      car.monthly_payment * car.loan_length
    end
  end

  def inventory_hash
    inventory_hash = {}
    car_array = []
    @inventory.map do |car|
      inventory_hash[car.make] = car_array.uniq << car
    end
    inventory_hash
  end
end





