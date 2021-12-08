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

  def add_car(car_to_add)
    @inventory << car_to_add
  end

  def has_inventory?
    @inventory != []
  end

  def cars_by_make(selected_make)
    @inventory.select do |current_car|
      current_car.make == selected_make
    end
  end

  def total_value
    cost_per_car = []
    sum = 0
    @inventory.each do |current_car|
      cost_per_car << current_car.total_cost
    end
    cost_per_car.each {|total| sum+=total }
    sum
  end

  def details
    details_hash = {}
    details_hash["total_value"] = total_value
    details_hash["address"] = @address
    details_hash
  end

  def average_price_of_car
    avg = total_value / @inventory.count
    avg.to_s.insert(-4, ',')
  end

  def cars_sorted_by_price
    @inventory.sort_by { |car| car.total_cost }    
  end

end
