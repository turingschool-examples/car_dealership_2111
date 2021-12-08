require './lib/car'
require './lib/dealership'
require 'pry'
require 'rspec'

RSpec.describe Dealership do
  it 'exist' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    expect(dealership).to be_instance_of(Dealership)
  end

  it 'has an inventory' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    expect(dealership.inventory).to eq([])
  end

  it "how many items are in inventory" do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    expect(dealership.inventory_count).to eq(0)
  end

  it "adds cars to inventory" do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    #binding.pry
    expect(dealership.inventory)
  end

  it 'counts inventory after adding cars' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    expect(dealership.inventory_count).to eq(2)
  end

  it 'have inventory?' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    expect(dealership.has_inventory?).to be(false)
  end

end
