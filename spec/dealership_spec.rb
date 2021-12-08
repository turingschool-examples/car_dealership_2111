require 'rspec'
require './lib/car'
require './lib/dealership'

RSpec.describe Dealership do
  before(:each) do
    @car = Car.new("Ford Mustang", 1500, 36)
    @dealership = Dealership.new('Acme Auto', '123 Main Street')
  end

  it 'dealerships initially have no inventory' do
    expect(@dealership.inventory).to eq([])
  end
end
