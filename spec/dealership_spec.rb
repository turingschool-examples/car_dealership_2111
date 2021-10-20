require 'rspec'
require './lib/car'
require './lib/dealership'

RSpec.describe Dealership do

  it 'is an instance of Dealership' do

    dealership = Dealership.new("Acme Auto", "123 Main Street")

  end

end
