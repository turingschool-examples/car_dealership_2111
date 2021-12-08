class Dealership
  attr_reader :name, :address, :inventory

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
    @inventory_count = 0
  end

  def add_car(car)
    @inventory << car
  end

  def inventory_count
    @inventory_count = @inventory.length
  end

  def has_inventory?
    if @inventory_count < 2
      return false
    end
  end

  def cars_by_make(make_check)
    @cars_by_make = []

    @inventory.each do |car|
      if car.make == make_check
        @cars_by_make << car
      end
    end
    return @cars_by_make
  end



end
