require './lib/car'
require './lib/dealership'


describe Dealership do
   it 'exists' do
     dealership = Dealership.new("Acme Auto", "123 Main Street")
     expect(dealership).to be_a Dealership
   end
end
