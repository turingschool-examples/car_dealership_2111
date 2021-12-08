class Dealership
  attr_reader :name, :address, :inventory, :inventory_count

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
  end

  def has_inventory?
    if @inventory.count <= 0
      false
    elsif @inventory.count > 0
      true
    end
  end

  def inventory_count
    @inventory.count
  end

  def add_car(car)
    @inventory << car
  end

  def cars_by_make(make)
    make_cars = []
    @cars.each do |car|
      if car.make == make
        make_cars << car
      end
    end
    return make_cars
  end

  def total_value
    @inventory.@payment.count
  end



#require'pry'; binding.pry
end
