class Dealership
  attr_reader :name, :address, :inventory

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
    @total_value = 0

  end

  def inventory_count
    @inventory.count
  end

  def add_car(car)
    @inventory << car
  end

  def has_inventory?
    if @inventory.length == 0
      false
    else
      true
    end
  end

  def cars_by_make(make)
    car_makes = []
    @inventory.each do |car|
      if car.make == make
        car_makes << car
      end
    end
    car_makes
  end

  def total_value
    @tot_value = 0
    @inventory.each do |car|
      @tot_value += car.total_cost
    end
    return @tot_value
  end

  def details
    deats = Hash.new
    deats = { @tot_value => @address }
  end

  def average_price_of_car
    avg_price = @tot_value / @inventory.count

    # @inventory.each do |car|
    #   avg_price += car.total_cost
    #    avg_price= avg_price/@inventory.count
    # end
    avg_price.to_s
  end

end
