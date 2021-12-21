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
  @inventory.count > 0
  end

  def cars_by_make(make)
      @inventory.find_all{|car| car.make == make}
      #cars_by_make = []
     #@inventory.each do |car|
      # if car.make == make
      #   cars_by_make << car
      #  end
     #end
     #return cars_by_make
  end

  def total_value
    @inventory.map { |car| car.total_cost}.sum
    #total_value = 0
    #@inventory.each do |car|
  #  total_value += car.total_cost
  #  end
  #  total_value
  end

  def details
    details = {
      "total_value" => total_value,
      "address" => @address
    }
  end

  def average_price_of_car
       (total_value / inventory_count).to_s.insert(-4, ",")

  end

  def cars_sorted_by_price
    inventory.sort_by{|car| car.total_cost}
  end
end
