require 'pry'
require './lib/car'
require './lib/dealership'

RSpec.describe Dealership do
  it 'exists' do
  dealership = Dealership.new("Acme Auto", "123 Main Street")
  expect(dealership).to be_instance_of(Dealership)
  end

  it 'has inventory that can be counted' do
  dealership = Dealership.new("Acme Auto", "123 Main Street")
  expect(dealership.inventory).to eq([])
  expect(dealership.inventory_count).to eq(0)
  end
end
