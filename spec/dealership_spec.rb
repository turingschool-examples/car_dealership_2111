require './lib/car'
require './lib/dealership'

describe Dealership do
  before(:each) do
    @car_1 = Car.new("Ford Mustang", 1500, 36)
    @car_2 = Car.new("Toyota Prius", 1000, 48)
    @car_3 = Car.new("Toyota Tercel", 500, 48)
    @car_4 = Car.new("Chevrolet Bronco", 1250, 24)
  end

  it 'exists' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    expect(dealership).to be_a(Dealership)
  end

  it 'has attributes' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    expect(dealership.name).to eq("Acme Auto")
    expect(dealership.address).to eq("123 Main Street")
    expect(dealership.inventory).to eq([])
  end

  describe ' #add_car' do
    it 'adds a car to inventory' do
      dealership = Dealership.new("Acme Auto", "123 Main Street")
      expect(dealership.inventory).to eq([])
      dealership.add_car(@car_1)
      expect(dealership.inventory).to eq([@car_1])
      dealership.add_car(@car_2)
      expect(dealership.inventory).to eq([@car_1, @car_2])
    end
  end

  describe ' #inventory_count' do
    it 'counts the inventory' do
      dealership = Dealership.new("Acme Auto", "123 Main Street")
      expect(dealership.inventory_count).to eq(0)
      dealership.add_car(@car_1)
      expect(dealership.inventory_count).to eq(1)
      dealership.add_car(@car_2)
      expect(dealership.inventory_count).to eq(2)
    end
  end

  describe ' #has_inventory?' do
    it 'truns true if inventory is not empty, false if empty' do
      dealership = Dealership.new("Acme Auto", "123 Main Street")
      expect(dealership.has_inventory?).to eq(false)
      dealership.add_car(@car_1)
      expect(dealership.has_inventory?).to eq(true)
      dealership.add_car(@car_2)
      expect(dealership.has_inventory?).to eq(true)
    end
  end

  before(:each)do
    @dealership = Dealership.new("Acme Auto", "123 Main Street")
    @dealership.add_car(@car_1)
    @dealership.add_car(@car_2)
    @dealership.add_car(@car_3)
    @dealership.add_car(@car_4)
  end

  describe ' #cars_by_make' do
    it 'returns only cars of specified make from inventory' do
      expect(@dealership.cars_by_make("Toyota")).to eq([@car_2, @car_3])
      expect(@dealership.cars_by_make("Ford")).to eq([@car_1])
    end
  end

  describe ' #total_value' do
    it 'returns the total value of slected inventory' do
      expect(@dealership.total_value).to eq(156000)
    end
  end

  describe ' #details' do
    it 'returns a hash with total value and address' do
      expect(@dealership.details["total_value"]).to eq(156000)
      expect(@dealership.details["address"]).to eq("123 Main Street")
    end
  end

  describe ' #average_price_of_car' do
    it 'returns the average price of cars in inventory' do
      expect(@dealership.average_price_of_car).to eq("39,000")
    end
  end

  describe ' #cars_sorted_by_price' do
    it 'returns the inventory sorted by price' do
      expect(@dealership.cars_sorted_by_price).to eq([@car_3, @car_4, @car_2, @car_1])
    end
  end

  describe ' #inventory_hash' do
    it 'returns a hash where each key is a make, and each value is an array of the associated cars' do
      expect(@dealership.inventory_hash).to eq({"Ford" => [@car_1], "Toyota" => [@car_2, @car_3], "Cheverolet" => [@car_4, @car_5]})
    end
  end
end
