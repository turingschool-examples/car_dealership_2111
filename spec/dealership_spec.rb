require 'rspec'
require './lib/car'
require './lib/dealership'

RSpec.describe Dealership do

  it 'is an instance of Dealership' do
      dealership = Dealership.new("Acme Auto", "123 Main Street")

  end

  it 'has an empty inventory on creation' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership.inventory).to eq([])
  end

  it 'can read inventory size' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership.inventory_count).to eq(0)

  end
end
