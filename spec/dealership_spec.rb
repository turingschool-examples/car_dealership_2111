require './lib/car'
require './lib/dealership'

RSpec.describe Dealership do

  it 'exists' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    expect(dealership).to be_an_instance_of(Dealership)
  end

  it 'inventory is empty' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    expect(dealership.inventory).to eq([])
  end

  it 'inventory count is 0' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    expect(dealership.inventory_count).to eq(0)
  end

  it 'can add cars to inventory' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    expect(dealership.inventory).to eq([car_1, car_2])
    expect(dealership.inventory_count).to eq(2)
  end

  it 'returns boolean based on inventory value' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    expect(dealership.has_inventory?).to be false
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    expect(dealership.has_inventory?).to be true
  end
end
