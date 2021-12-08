class Dealership
  attr_reader :dealer_name,
              :address,
              :inventory,
              :inventory_count,
              :value

  def initialize(dealer_name, address)
    @dealer_name      = dealer_name
    @address          = address
    @inventory        = []
    @inventory_count  = 0
    @value            = 0
  end

  def add_car(car)
    @inventory << car
    @inventory_count += 1
  end

  def has_inventory?
    if @inventory_count = 0
      return false
    else
      return true
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
    @inventory.each do |car|
      @value += car.total_cost
    end
    @value
  end

  def details
    detail = {
      "total_value" => @value,
      "address"     => @address
    }
  end

  def average_price_of_car #refactor - how to get value from total_value
    temp_value = 0
    @inventory.each do |car| #this is bloated
      temp_value += car.total_cost
    end
    average = temp_value / @inventory.length #needs to convert .to_s after inputting a comma
    if average.to_s.chars.to_a.length >= 4 #if over 3, string needs commas
      average.to_s.chars.to_a #create array
      #combine every 3 characters
      #input commas between groups of 3
      #output whole string with commas in correct order
    else #if not over 3 no commas necessary
      average.to_s
    end
  end

  def cars_sorted_by_price
    #for each car
    #return car.total_cost & save to array
    #Does a sort method exist for an array? If not create comparisons & sort
    #output
  end

  def inventory_hash
    #create new empty hash
    #for each car
    #if no key exists for a car.make, then create a key with car.make
    #if key exists, skip
    #after each key is created, for each car
    #If car.make == key, shovel car instance into array
    #return hash
  end

end
