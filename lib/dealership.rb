class Dealership
  attr_reader :dealership,
              :address,
              :inventory

  def initialize(dealership, address)
    @dealership   = dealership
    @address      = address
    @inventory    = []
  end

  def inventory_count
    @inventory.count
  end

  def add_car(car)
    @inventory.push(car)
  end

  def cars_by_make(make)
    @inventory.select do |invent|
      invent.cars.make == make
    end
  end

  def total_value

  end

  def details

  end

end
