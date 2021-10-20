require './lib/car'
require './lib/dealership'

RSpec.describe Dealership do
  it 'exists' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership).to be_a Dealership
  end

  it 'has attributes' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership.dealership_name). to eq("Acme Auto")
    expect(dealership.address).to eq("123 Main Street")
  end
