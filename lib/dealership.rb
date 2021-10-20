class Dealership
  attr_reader :dealer, :address
  attr_accessor :inventory, :dealer_info, :inv_hash
  def initialize(dealer, address)
    @dealer = dealer
    @address = address
    @inventory = []
    @dealer_info = {}
    @inv_hash = {}
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

  def cars_by_make(mfg)
    @makes = []
    @inventory.each do |car|
      if car.make == mfg
        @makes << car
      end
    end
    @makes
  end
  def total_value
    @inv_cost = 0
    @inventory.each do |car|
      @inv_cost += car.total_cost
    end
    @inv_cost
  end
  def details
    @dealer_info["total_value"] = total_value
    @dealer_info["address"] = address
    @dealer_info
  end
  def average_price_of_car
    @average = total_value / inventory_count
    @average.to_s.insert(2, ",")
  end
  def cars_sorted_by_price
    @inventory.sort_by{|car| car.total_cost}
  end
  def inventory_hash
    @inv_hash["Ford"] = cars_by_make("Ford")
    @inv_hash["Toyota"] = cars_by_make("Toyota")
    @inv_hash["Chevrolet"] = cars_by_make("Chevrolet")
    @inv_hash
  end
end
