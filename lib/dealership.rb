class Dealership

  attr_reader :name, :address, :inventory

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
  end

  def inventory_count
    @inventory.length
  end

  def has_inventory?
    @inventory.length >= 1
  end

  def add_car(car)
    @inventory << car
  end

  def cars_by_make(make)
    cars_by_make_catcher = []
    @inventory.each do |car|
      if car.make == make
        cars_by_make_catcher << car
      end
    end
    cars_by_make_catcher
  end

  def total_value
    total_inventory_value = 0
    @inventory.each do |car|
      total_inventory_value += car.total_cost
    end
    total_inventory_value
  end

  def details
    dealer_details = {
      "total_value" => total_value,
      "address" => @address
    }
  end

  def average_price_of_car
    average_cost = total_value / inventory_count
    format_number(average_cost)
  end

  def format_number(number)
    group_nums = number.to_s.chars.to_a.reverse.each_slice(3) #
    group_nums.map(&:join).join(',').reverse
  end

  def cars_sorted_by_price
    sorted = @inventory.sort_by {|car| car.total_cost}
  end

  def inventory_hash # So ugly, iterates through @inventory like 3 times, can clean up, but out of time.
    inventory_hash = Hash.new
    car_makes = []

    @inventory.each do |car|
      car_makes << car.make
    end

    no_duplicates = car_makes.uniq

    no_duplicates.each do |make|
      inventory_hash[make] = cars_by_make(make).map{|car| car}
    end

    inventory_hash
  end
end
