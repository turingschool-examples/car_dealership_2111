require './lib/car'
require './lib/dealership'

RSpec.describe Dealership do
  before(:each) do
    @dealership = Dealership.new("Acme Auto", "123 Main Street")
    @car_1 = Car.new("Ford Mustang", 1500, 36)
    @car_2 = Car.new("Toyota Prius", 1000, 48)
    @car_3 = Car.new("Toyota Tercel", 500, 48)
    @car_4 = Car.new("Chevrolet Bronco", 1250, 24)
  end

  it 'exists' do
    expect(@dealership).to be_instance_of Dealership
  end

  it 'has an inventory' do
    expect(@dealership.inventory).to eq([])
    expect(@dealership.inventory).to be_instance_of(Array)
  end

  it 'can return a count of its inventory' do
    expect(@dealership.inventory_count).to be 0
    expect(@dealership.inventory_count).to be_instance_of Integer
  end

  it 'starts with no inventory' do
    expect(@dealership.has_inventory?).to be false
  end

  describe 'handling inventory' do
    before(:each) do
      @dealership.add_car(@car_1)
      @dealership.add_car(@car_2)
      @dealership.add_car(@car_3)
      @dealership.add_car(@car_4)
    end

    it 'can add cars to inventory' do
      expect(@dealership.inventory_count).to be 4
      expect(@dealership.has_inventory?).to be true
      expect(@dealership.inventory).to eq([@car_1, @car_2, @car_3,  @car_4])
    end

    it 'can return cars by make' do
      expect(@dealership.cars_by_make('Toyota')).to eq([@car_2, @car_3])
      expect(@dealership.cars_by_make("Ford")).to eq([@car_1])
    end

    it 'can return the total value of all cars in inventory' do
      expect(@dealership.total_value). to be 156000
      expect(@dealership.total_value).to be_instance_of Integer
    end

    it 'can return its details (total value, address) in a hash' do
      expect(@dealership.details).to eq({"total_value" => 156000, "address" => "123 Main Street"})
      expect(@dealership.details).to be_instance_of Hash
    end

    it 'can return the average price of a car' do
      expect(@dealership.average_price_of_car).to be_instance_of String
      expect(@dealership.average_price_of_car).to eq "39,000"
    end
  end
end
