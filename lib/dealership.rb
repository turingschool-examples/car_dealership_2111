class Dealership

  attr_reader :name, :address, :inventory

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
  end

  def inventory_count
   @inventory.count
  end

  def add_car(car)
    @inventory << car
  end

  def has_inventory?
    @inventory == 0
  end

#COULD FIGURE OUT WITH MORE TIME
  # def cars_by_make(make)
  #   cars_in_make = []
  #   @make.each do |make|
  #     if make.car == car
  #       cars_in_make << make
  #     end
  #
  #   end
  #   cars_in_make
end
