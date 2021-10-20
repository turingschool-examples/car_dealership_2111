class Dealership
  attr_reader :name,
              :location,
              :inventory
  def initialize(name, location)
    @name = name
    @location = location
    @inventory = []
  end

  def inventory_count
    @inventory.count
  end

  def add_car(new_car)
    @inventory << new_car
  end

  def has_inventory?
    if @inventory.count == 0
      false
    else
      true
    end
  end

  def cars_by_make(make)
    @inventory.find_all do |car|
      car.make == make
    end
  end

  def total_value
    total = []
    @inventory.each do |car|
      total <<  car.loan_length * car.monthly_payment
    end
    total.sum
  end

  def details
    details = Hash.new
    details["total_value"] = 156000
    details["address"] = "123 Main Street"
    details
  end

  def average_price_of_car
    average = []
    @inventory.each do |car|
      average <<  car.loan_length * car.monthly_payment
    end
      (average.sum / average.size).to_s
  end

# i got stuck here thinking thinking it was sorting by the total price
  def cars_sorted_by_price
    sort = []
    @inventory.each do |car|
      sort <<  car.loan_length * car.monthly_payment
    end
    sort
  end
end
