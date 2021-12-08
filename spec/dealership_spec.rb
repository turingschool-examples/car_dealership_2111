require 'rspec'
require './lib/car'
require './lib/dealership'

RSpec.describe Dealership do

  let(:dealership) {Dealership.new("Acme Auto", "123 Main Street")}
  let(:car_1) {Car.new("Ford Mustang", 1500, 36)}
  let(:car_2) {Car.new("Toyota Prius", 1000, 48)}
  let(:car_3) {Car.new("Toyota Tercel", 500, 48)}
  let(:car_4) {Car.new("Chevrolet Bronco", 1250, 24)}
  # let(:) {}
  # let(:) {}
  # let(:) {}

  it '9* exists' do
    expect(dealership).to be_a Dealership
  end

  it '10* initializes with inventory as an empty array' do
    expect(dealership.inventory).to eq([])
  end

  it '11* initializes with inventory_count at 0' do
    expect(dealership.inventory_count).to be 0
  end

  it '12* can add to the inventory as an empty array' do
    dealership.add_car(car_1)
    dealership.add_car(car_2)

    expect(dealership.inventory).to eq([car_1, car_2])
  end

  it '13* will add to the inventory_count at' do
    dealership.add_car(car_1)
    dealership.add_car(car_2)

    expect(dealership.inventory_count).to be 2
  end

  it '14* will answer has_inventory?' do

    expect(dealership.has_inventory?).to be false
  end

  it '15* can sort cars by make' do
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    dealership.add_car(car_3)
    dealership.add_car(car_4)

    expect(dealership.cars_by_make("Toyota")).to eq([car_2, car_3])
    expect(dealership.cars_by_make("Ford")).to eq([car_1])
  end

  it '16* can calculate the value of the inventory' do
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    dealership.add_car(car_3)
    dealership.add_car(car_4)

    expect(dealership.total_value).to eq(156000)
  end

end
