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

  describe '#initialize' do
    it 'is a Dealership class' do
      expect(@dealership).to be_a(Dealership)
    end

    it 'inventory is empty by default' do
      expect(@dealership.inventory).to eq([])
      expect(@dealership.inventory_count).to eq(0)
    end
  end

  describe '#add car' do
    it 'can add a car to the inventory' do
      @dealership.add_car(@car_1)
      @dealership.add_car(@car_2)

      expect(@dealership.inventory).to eq([@car_1, @car_2])
      expect(@dealership.inventory_count).to eq(2)
    end
  end
  describe '#has_inventory?' do
    it 'boolean returns for having inventory' do
      expect(@dealership.has_inventory?).to be(false)

      @dealership.add_car(@car_1)
      @dealership.add_car(@car_2)

      expect(@dealership.has_inventory?).to be(true)
    end
  end
  describe '#cars_by_make' do
    it 'returns the cars of a specific make' do
      @dealership.add_car(@car_1)
      @dealership.add_car(@car_2)
      @dealership.add_car(@car_3)
      @dealership.add_car(@car_4)

      expect(@dealership.cars_by_make('Toyota')).to eq([@car_2, @car_3])
      expect(@dealership.cars_by_make('Ford')).to eq([@car_1])
    end
  end
end
