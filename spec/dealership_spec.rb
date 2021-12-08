require './lib/car'
require './lib/dealership'

RSpec.describe Dealership do
  it 'exists' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    expect(dealership.inventory). to eq([])
  end

  it 'dealership inventory count' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    expect(dealership.inventory_count). to eq(0)
  end
end
