class Dealership
  attr_accessor :inventory, :inventory_count

  def initialize(dealership, address)
    @dealership = dealership
    @address = address
    @inventory = []
    # @inventory_count = @inventory.size # why can't I do this?
  end

  def add_car(car)
    @inventory.push(car)
  end

  def inventory_count
    @inventory.size
  end

  def cars_by_make(make) # look at how to refactor this without the if statement
    car_match = []
    @inventory.find_all do |car|
      if car.make == make
        car_match.push(car)
      end
    end
  end

  def total_value
    total = @inventory.map do |car|
      car.total_cost
    end

    total = total.inject(:+)  # Instructor: is it possible to reach into the car
                              # objects while using inject at the same time?

  end

end
