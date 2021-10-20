class Dealership

  attr_reader :name,
              :address,
              :inventory,
              :inventory_count

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
    @inventory_count = 0
  end

  def add_car(car)
    @inventory << car
    @inventory_count += 1
  end

  def has_inventory?
    @inventory.count > 0
  end

  def cars_by_make(make)
    @inventory.find_all do |car|
      car.make == make
    end
  end

  def total_value
  value = 0
    @inventory.each do |car|
      value += car.total_cost
    end
  value
  end

  def details
    details = Hash.new
    details.store("total_value",total_value)
    details.store("address", address)
    details
  end


  def average_price_of_car
  avg_car = []
    @inventory.each do |car|
      avg_car << car.total_cost
    end
  avg_car
  car_sum = 0
    avg_car.each do |cost|
      car_sum += cost
    end
  avg = car_sum / avg_car.count
  # Could not find an easy way that I understood to add commas.
  ## I know I should be using a helper method to calculate the average
  ## but I was pressed for times.
  (avg).to_s
  end
end
