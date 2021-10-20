require './lib/car'
require './lib/dealership'

RSpec.describe Dealership do
  it 'exists' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

  expect(dealership).to be_a(Dealership)
  end

  it 'has inventory' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership.inventory).to eq(Array.new)
  end

  it 'checks its inventory' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership.inventory_count).to eq(0)
  end

  it 'can add inventory of cars to the lot' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)

    expect(dealership.add_car(car_1)).to eq(dealership.inventory)
    expect(dealership.add_car(car_2)).to eq(dealership.inventory)
  end

  it '' do

  end
end
