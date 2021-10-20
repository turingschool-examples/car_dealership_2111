require './lib/car'
require './lib/dealership'

describe Dealership do
  before(:each) do
    @car_1 = Car.new("Ford Mustang", 1500, 36)
    @car_2 = Car.new("Toyota Prius", 1000, 48)
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
    xit 'adds a car to inventory' do
      dealership = Dealership.new("Acme Auto", "123 Main Street")
      expect(dealership.inventory).to eq([])
      dealership.add_car(@car_1)
      expect(dealership.inventory).to eq([@car_1])
      dealership.add_car(@car_2)
      expect(dealership.inventory).to eq([@car_1, @car_2])
    end
  end

  describe ' #inventory_count' do
    xit 'counts the inventory' do
      dealership = Dealership.new("Acme Auto", "123 Main Street")
      expect(dealership.inventory_count).to eq(0)
      dealership.add_car(@car_1)
      expect(dealership.inventory_count).to eq(1)
      dealership.add_car(@car_2)
      expect(dealership.inventory_count).to eq(2)
    end
  end

end
