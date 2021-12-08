require './lib/car'
require './lib/dealership'
require 'pry'

RSpec.describe Car do
  it 'exists' do
    dealership = Dealership.new("Acme Auto", "123 Main Street"
    expect(dealership).to be_a Dealership
  end
  
end
