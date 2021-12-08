require './lib/car'
require './lib/dealership'

RSpec.describe Dealership do

  it 'has an empty inventory by default' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership.inventory).to eq([])
    expect(dealership.inventory_count).to eq(0)
  end
end
