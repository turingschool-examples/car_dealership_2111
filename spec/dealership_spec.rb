require 'rspec'
require './lib/car'
require './lib/dealership'

describe Dealership do
  it 'exists' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    expect(dealership).to be_a Dealership
  end

  it 'has inventory count' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    expect(dealership.inventory_count).to eq(0)
  end

  it 'adds cars' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    expect(dealership.inventory_count).to eq(2)
  end

  it 'checks to see if there are cars in inventory' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    expect(dealership.has_inventory?).to eq(false)
  end

  it 'lists cars by make' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    car_3 = Car.new("Toyota Tercel", 500, 48)
    car_4 = Car.new("Chevrolet Bronco", 1250, 24)
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    dealership.add_car(car_3)
    dealership.add_car(car_4)
    expect(dealership.cars_by_make("Toyota").size).to eq(2)
  end

  it 'gives a total of all cars value' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    car_3 = Car.new("Toyota Tercel", 500, 48)
    car_4 = Car.new("Chevrolet Bronco", 1250, 24)
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    dealership.add_car(car_3)
    dealership.add_car(car_4)
    expect(dealership.total_value).to eq(15600)
  end

end
