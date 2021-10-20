class Dealership

  attr_reader :name, :address, :inventory, :inventory_count, :total_value

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
    @total_value = 0
  end

  def add_car(car)
    @inventory << car
    @total_value += car.total_cost
  end

  def inventory_count
    @inventory.count
  end

  def has_inventory?
    if @inventory.count != 0
      return true
    else
      return false
    end
  end

  def cars_by_make(make)
    cars_by_make_array = []
    @inventory.each do |car|
      if car.make == make
        cars_by_make_array << car
      end
    end
    return cars_by_make_array
  end

  def details
    details_hash = {
      "total_value" => @total_value,
      "address" => @address
    }
    return details_hash
  end

  ## how to delimit with commas? won't pass without that
  def average_price_of_car
    int_ave = @total_value/(@inventory.count)
    # return int_ave
  end

  # def cars_sorted_by_price
  #   sorted_cars = []
  #
  #   end
  # end

end
