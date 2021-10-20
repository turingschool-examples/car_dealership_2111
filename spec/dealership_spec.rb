require './lib/car'
require './lib/dealership'


describe Dealership do
   it 'exists' do
     dealership = Dealership.new("Acme Auto", "123 Main Street")
     expect(dealership).to be_a Dealership
   end

   it 'shows class inventory' do
     dealership = Dealership.new("Acme Auto", "123 Main Street")
        expect(dealership.inventory).to eq []
   end

   it 'shows class inventory count' do
     dealership = Dealership.new("Acme Auto", "123 Main Street")
     expect(dealership.inventory_count).to eq(0)
   end
end
