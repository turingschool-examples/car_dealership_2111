require 'rspec'
require './lib/car'
require './lib/dealership'
require 'pry'

RSpec.describe Dealership do
  before(:each) do
    @car_1 = Car.new("Ford Mustang", 1500, 36)
    @car_2 = Car.new('Toyota Prius', 1000, 43)
    @dealership = Dealership.new('Acme Auto', '123 Main Street')
  end

  it 'dealerships initially have no inventory' do
    expect(@dealership.inventory).to eq([])
    expect(@dealership.inventory_count).to eq(0)
  end

  it 'can add cars to inventory' do
    @dealership.add_car(@car_1)
    @dealership.add_car(@car_2)
    expect(@dealership.inventory_count).to eq(2)
  end

  it 'will return if it has inventory in a boolean' do
    expect(@dealership.has_inventory?).to be(false)
    @dealership.add_car(@car_1)
    expect(@dealership.has_inventory?).to be(true)
  end

  it 'will sort cars by make' do
    car_3 = Car.new("Toyota Tercel", 500, 48)
    car_4 = Car.new("Chevrolet Bronco", 1250, 24)
    @dealership.add_car(@car_1)
    @dealership.add_car(@car_2)
    @dealership.add_car(car_3)
    @dealership.add_car(car_4)
    expect(@dealership.cars_by_make('Toyota')).to eq([@car_2, car_3])
    expect(@dealership.cars_by_make('Ford').length).to eq(1)
  end

end
