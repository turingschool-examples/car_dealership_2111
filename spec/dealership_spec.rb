require 'rspec'
require './lib/car'
require './lib/dealership'

RSpec.describe Dealership do
  before(:each) do
    @dealership = Dealership.new("Acme Auto", "123 Main Street")
  end
  describe '#initialize' do
    it 'creates class instance' do
      expect(@dealership).to be_instance_of Dealership
    end

    it 'has name' do
      expect(@dealership.name).to eq "Acme Auto"
    end

    it 'has address' do
      expect(@dealership.address).to eq "123 Main Street"
    end
  end
end
