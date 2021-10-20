require 'rspec'
require './lib/car'
require './lib/dealership'

RSpec.describe Dealership do
  before(:each) do
    @dealership = Dealership.new("Acme Auto", "123 Main Street")
  end

  describe '#initialize' do
    it 'creates class instance' do
      expect(@dealership).to be_instance_of Dealership
    end

    it 'has name' do
      expect(@dealership.name).to eq "Acme Auto"
    end

    it 'has address' do
      expect(@dealership.address).to eq("123 Main Street")
    end

    it 'has no inventory' do
      expect(@dealership.inventory).to eq([])
    end
  end

  describe '#inventory_count' do
    it 'counts cars in inventory' do
      expect(@dealership.inventory_count).to eq 0
    end
  end

  describe '#add_car' do
    it 'adds car to inventory' do
      car_1 = Car.new("Ford Mustang", 1500, 36)
      car_2 = Car.new("Toyota Prius", 1000, 48)
      @dealership.add_car(car_1)
      @dealership.add_car(car_2)

      expect(@dealership.inventory).to eq([car_1, car_2])
      expect(@dealership.inventory_count).to eq 2
    end
  end
end
