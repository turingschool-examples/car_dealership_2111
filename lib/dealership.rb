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

  def has_inventory?
    !@inventory.empty?
  end

  def add_car(car)
    @inventory << car
  end

  def cars_by_make(make)
    @inventory.select { |car| car.make == make }
  end

  def total_value
    @inventory.sum { |car| car.total_cost }
  end

  def details
    {
      'total_value' => total_value,
      'address' => address
      }
  end

  def average_price_of_car
    average = (total_value.to_f / inventory_count).truncate.to_s
    average.length < 4 ? average : format_commas(average)
  end

  def format_commas(string)
    string.length.times do |i|
      next if i.zero?
      next unless (i % 4).zero?

      string = string.insert(-i, ',')
    end
    string
  end

  def inventory_hash
    inventory_hash = Hash.new{ |hash, key| hash[key] = [] }
    @inventory.each { |car| inventory_hash[car.make] << car }
    inventory_hash
  end
end
