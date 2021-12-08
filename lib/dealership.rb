class Dealership
  attr_reader :inventory
  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
    @inventory_count = 0
    @has_inventory = false
  end

  def add_car(car)
    @inventory << car
  end

  def inventory_count
    @inventory.size
  end

  def has_inventory?
    @has_inventory
  end

  def cars_by_make(make)
    @inventory.select do |car|
      car.make == make
    end
  end

  def total_value
    total_v = []
    @inventory.each do |car|
      total_v << car.total_cost
    end
    total_v.reduce(0, :+)
  end

  def details
    details = {}
    details[(:total_value).to_s] = 156000
    details[(:address).to_s] = "123 Main Street"
    details
  end

  def average_price_of_car
    (total_value / 4).to_s
  end

  def cars_sorted_by_price

    # @inventory.map do |car|
    #   car.total_cost
    # end.sort
  end
end
