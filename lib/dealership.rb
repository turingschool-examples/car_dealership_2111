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

  def has_inventory?
    !@inventory.empty?
  end

  def add_car(car)
    @inventory << car
  end

  def cars_by_make(make)
    @inventory.select { |car| car.make == make }
  end

  def total_value
    @inventory.sum { |car| car.total_cost }
  end

  def details
    {
      'total_value' => total_value,
      'address' => address
      }
  end
end
