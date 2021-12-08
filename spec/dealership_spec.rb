require './lib/car'
require './lib/dealership'

RSpec.describe Dealership do
  context 'iteration 2' do
    let(:dealership) {Dealership.new("Acme Auto", "123 Main Street")}
    let(:car_1) {Car.new("Ford Mustang", 1500, 36)}
    let(:car_2) {Car.new("Toyota Prius", 1000, 48)}

    it 'exists' do

      expect(dealership).to be_a(Dealership)
    end

    it 'has an inventory that is an array' do

      expect(dealership.inventory).to eq([])
    end

    it 'can count the inventory' do

      expect(dealership.inventory_count).to be(0)
    end

    it 'has specific cars' do

      expect(car_2).to be_a(Car)
    end

    it 'has an inventory' do
      dealership.add_car(car_1)
      dealership.add_car(car_2)

      expect(dealership.inventory).to include(car_1, car_2)
    end

    it 'has added cars' do
      dealership.add_car(car_1)
      dealership.add_car(car_2)

      expect(dealership.inventory_count).to eq(2)
    end
  end

  context 'iteration 3' do
    let(:dealership) {Dealership.new("Acme Auto", "123 Main Street")}
    let(:car_1) {Car.new("Ford Mustang", 1500, 36)}
    let(:car_2) {Car.new("Toyota Prius", 1000, 48)}
    let(:car_3) {Car.new("Toyota Tercel", 500, 48)}
    let(:car_4) {Car.new("Chevrolet Bronco", 1250, 24)}

    it 'has no inventory' do

      expect(dealership.has_inventory?).to be(false)
    end

    it 'has specific cars' do

      expect(car_1).to be_a(Car)
      expect(car_2).to be_a(Car)
      expect(car_3).to be_a(Car)
      expect(car_4).to be_a(Car)
    end
  end
end
