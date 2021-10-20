class Dealership
  attr_reader :inventory, :inventory_count
  def initialize(name, address)
     @inventory = []
     @inventory_count = 0
  end

  def add_car(car)
    @inventory << car
  end

  def inventory_count
    @inventory.count
  end

  def has_inventory?
    inventory_count > 0
  end

  def cars_by_make(make)
     # require 'pry'; binding.pry
    @inventory.select do |car|
      car.make == make
    end
  end

  # total value pseudocode edition !
  # inventory holds an array of all Car objects.
  # for each item in array call total cost method
  # translate that into an array of values
  # add up all array of values

  # this was much harder than I anticipated it would be
  # .....30 mins later....

  def total_value
      @grand_total = 0
      @inventory.each do |car|
      @grand_total += car.total_cost
      end
    @grand_total
  end

  def average_price_of_car
    average = total_value / inventory_count
    string_average = average.to_s
    string_average.insert(2, ',')
  end


  # probably not gonna be able to do this in time but...
  # could have done it if I had more time :P 

  def cars_sorted_by_price
      @cost_array = []
      @inventory.each do |car|
      @cost_array << car.total_cost
      @sorted = @cost_array.sort
      @correct_order = @sorted.reverse()
      @correct_order
    end
  end


end


    # @inventory.find_all do |car|
    #   car.total_cost is_a? Integer


    # @grand_total = []
    # @inventory.each do |car|
    #   car.total_cost is_a? Integer
    #   @grand_total << car
    # end
    # @grand_total.sum
