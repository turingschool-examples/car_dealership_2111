class Dealership
  attr_reader :inventory

  def initialize(name, address)
    @name      = name
    @address   = address
    @inventory = []
  end

  def inventory_count
    @inventory.length
  end

  def add_car(car)
    @inventory << car
  end

  def has_inventory?
    @inventory.length > 0
  end

  def cars_by_make(make)
    @inventory.find_all { |car| car.make == make }
  end

  def total_value
    @inventory.sum { |car| car.total_cost }
  end

  def details
    {"total_value" => total_value, "address" => @address}
  end

  def average_price_of_car
    avg = (total_value / inventory_count).to_s
    if avg.length == 4
      a = avg.slice(0)
      b = avg.slice(1..3)
      "#{a},#{b}"
    elsif avg.length == 5
      a = avg.slice(0..1)
      b = avg.slice(2..4)
      "#{a},#{b}"
    elsif avg.length == 6
      a = avg.slice(0..2)
      b = avg.slice(3..5)
      "#{a},#{b}"
    elsif avg.length == 7
      a = avg.slice(0)
      b = avg.slice(1..3)
      c = avg.slice(4..6)
      "#{a},#{b}"
    elsif avg.length == 8
      a = avg.slice(0..1)
      b = avg.slice(2..4)
      c = avg.slice(5..7)
      "#{a},#{b}"
    elsif avg.length == 9
      a = avg.slice(0..2)
      b = avg.slice(3..5)
      c = avg.slice(6..8)
      "#{a},#{b}"
    end
  end

  def cars_sorted_by_price
    @inventory.sort_by { |car| car.total_cost }
  end

  def inventory_hash
    @inventory.group_by { |car| car.make }
  end
end
