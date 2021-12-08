require 'rspec'
require './lib/car'
require './lib/dealership'

RSpec.describe Dealership do
  it 'IT2 p2' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    expect(dealership.inventory).to eq([])
    expect(dealership.inventory_count).to eq(0)
  end

  it 'IT2 p2' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    expect(dealership.inventory).to eq([car_1, car_2])
    expect(dealership.inventory_count).to eq(2)
  end

  it 'IT3 p1' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    dealership.has_inventory?
    expect(dealership.has_inventory?).to eq(false)
  end

end
