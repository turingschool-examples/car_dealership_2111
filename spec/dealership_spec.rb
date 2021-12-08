require './lib/car'
require './lib/dealership'
require 'rpsec'
require 'pry'

RSpec.describe Dealership do
  it 'exists' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership).to be_a Dealership
  end

  it 'has an inventory array' do

# binding.pry
    expect(dealership.inventory).to eq([])
  end

  it 'counts number of items in inventory' do

    expect(dealership.inventory_count).to eq(0)
  end

  it "exists" do
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyoto Prius", 1000, 48)
    expect(car_1).to be_a(Car)
    expect(car_2).to be_a(Car)
  end

  it 'adds cars to inventory array' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyoto Prius", 1000, 48)
    dealership.add_car(car_1)
    dealership.add_car(car_2)

    expect(dealership.inventory).to eq(cars)
  end

  it 'counts the total number of cars in inventory' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyoto Prius", 1000, 48)
    dealership.add_car(car_1)
    dealership.add_car(car_2)

    expect(dealership.inventory_count).to eq(2)
  end
end
