class Dealership
  attr_reader :dealer_name,
              :address,
              :inventory,
              :inventory_count,
              :value

  def initialize(dealer_name, address)
    @dealer_name      = dealer_name
    @address          = address
    @inventory        = []
    @inventory_count  = 0
    @value            = 0
  end

  def add_car(car)
    @inventory << car
    @inventory_count += 1
  end

  def has_inventory?
    if @inventory_count = 0
      return false
    else
      return true
    end
  end

  def cars_by_make(make)
    car_makes = []
    @inventory.each do |car|
      if car.make == make
        car_makes << car
      end
    end
    car_makes
  end

  def total_value
    @inventory.each do |car|
      @value += car.total_cost
    end
    @value
  end

  def details
    detail = {
      "total_value" => @value,
      "address"     => @address
    }
  end

end
