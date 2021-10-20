require 'rspec'
require './lib/car'
require './lib/dealership'

describe Dealership do
  describe '#initialize' do
    it 'is an instance of Dealership' do
      dealership = Dealership.new("Acme Auto", "123 Main Street")
      expect(dealership).to be_a Dealership
    end
  end

  describe '#inventory' do
    it 'returns the inventory of the dealership' do
      dealership = Dealership.new("Acme Auto", "123 Main Street")
      expect(dealership.intentory).to eq([])
    end

end
