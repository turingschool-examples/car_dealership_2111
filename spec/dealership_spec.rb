require 'rspec'
require './lib/car'
require './lib/dealership'
require 'pry'

RSpec.describe Dealership do

  it "exists" do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership).to be_an_instance_of(Dealership)
  end

  it "#inventory" do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership.inventory).to eq([])

  end


end
