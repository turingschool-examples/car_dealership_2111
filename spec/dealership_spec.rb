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
  end

end
