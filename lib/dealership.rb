class Dealership
  attr_reader :name,
              :address,
              :inventory

    def initialize(name, address)
      @name = name
      @address = address
      @inventory = []
    end

    def inventory_count
      @inventory.count
    end

    def add_car(cars)
      @inventory << cars
    end

    def has_inventory?
      if inventory_count == 1 || inventory_count > 1
        true
      else
        false
      end
    end

    def cars_by_make(car_make) #due to hardcoded this wont work.
      @inventory.find_all do |correct_make|
        correct_make.car.make
      end.size
    end

    def total_value
      total = 0 # no time need to first set up something to return car.total_length
      @inventory.each do |add_car_value|
        total += add_car_value
      end
      total
    end
end
