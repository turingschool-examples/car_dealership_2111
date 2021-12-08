class Dealership
  attr_reader :name, :location, :inventory

  def initialize(name, location)
    @name = name
    @location = location
    @inventory = []
  end

  def inventory_count
    @inventory.size
  end

  def add_car(car)
    @inventory << car
  end
#iteration_3
  def cars_by_make(make)
    cars = []
    @inventory.each do |car|
      if car.make == make
        cars << car
      end
    end
    cars
  end

  def total_value
    total_value = 0
    @inventory.each do |car|
    total_value += car.total_cost
    end
    total_value
  end

  def details
    details = {}
    details["total_value"] = total_value
    details["address"] = @location
    details
  end
#iteration_4
  def average_price_of_car
    average = total_value / inventory_count
    average_str = average.to_s
    output = average_str.insert(2, ",")
    output
  end
end
