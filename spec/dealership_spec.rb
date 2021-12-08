require './lib/car'
require './lib/dealership'
require 'rspec'
require 'pry'

RSpec.describe Dealership do
  it 'exists' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership).to be_a Dealership
  end

  it 'has an inventory array' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    expect(dealership.inventory).to eq([])
  end

  it 'counts number of items in inventory' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
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

    expect(dealership.inventory).to eq([car_1, car_2])
  end

  it 'counts the total number of cars in inventory' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyoto Prius", 1000, 48)
    dealership.add_car(car_1)
    dealership.add_car(car_2)

    expect(dealership.inventory_count).to eq(2)
  end

  it 'has an inventory' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership.has_inventory?).to be(false)
  end

  it 'sorts cars by make attribute' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    car_3 = Car.new("Toyota Tercel", 500, 48)
    car_4 = Car.new("Chevrolet Bronco", 1250, 24)
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    dealership.add_car(car_3)
    dealership.add_car(car_4)

    expect(dealership.cars_by_make("Toyota")).to eq([car_2, car_3])
  end
end
