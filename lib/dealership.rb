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

  def cars_by_make(given)
    short_list = @inventory.select {|car| car.make == given}
    short_list.count
  end

  def total_value
    values = []
    @inventory.each do |car|
      values << car.total_cost
    end
    values.sum
  end

  def details
    details_hash = {"total_value" => self.total_value, "address" => self.address}
  end

end
