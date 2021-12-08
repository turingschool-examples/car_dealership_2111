require 'rspec'
require './lib/car'
require './lib/dealership'
require 'pry'

RSpec.describe Dealership do

  it "exists" do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership).to be_an_instance_of(Dealership)
  end

  it "#inventory" do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership.inventory).to eq([])
  end

  it "#inventory count" do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership.inventory_count).to eq(0)
  end


  it "#add two new cars" do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    expect(dealership.inventory_count).to eq(2)
  end

  it "#has inventory?" do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    expect(dealership.has_inventory?).to eq(false)
  end


end
