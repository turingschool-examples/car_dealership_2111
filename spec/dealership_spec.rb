require 'rspec'
require './lib/dealership'

RSpec.describe Dealership do
  it 'exists' do
    car = Car.new("Ford Mustang", 1500, 36)
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    expect(dealership).to be_a(Dealership)
  end

  it 'has inventory' do
    car = Car.new("Ford Mustang", 1500, 36)
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    expect(dealership.inventory).to eq([])
  end

  it 'can count inventory' do
    car = Car.new("Ford Mustang", 1500, 36)
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    expect(dealership.inventory_count).to eq(0)
  end

  # it 'can add car' do
  #   car = Car.new("Ford Mustang", 1500, 36)
  #   car_2 = Car.new("Toyota Prius", 1000, 48)
  #   dealership = Dealership.new("Acme Auto", "123 Main Street")
  #   dealership.add_car(car, car_2)
  #
  #   expect(dealership.inventory).to eq(car, car_2)
  # end
end
