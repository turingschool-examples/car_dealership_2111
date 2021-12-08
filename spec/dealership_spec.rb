require './lib/car'
require './lib/dealership'

RSpec.describe Dealership do
  it 'exists' do
    dealership = Dealership.new()

    expect(dealership).to be_a Dealership
  end
end
