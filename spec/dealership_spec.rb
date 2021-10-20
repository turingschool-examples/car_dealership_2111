require 'rspec'
require './lib/car'
require './lib/dealership'
require 'pry'

RSpec.describe Dealership do
  before(:each) do
    @dealership = Dealership.new("Acme Auto", "123 Main Street")
    @car_1 = Car.new("Ford Mustang", 1500, 36)
    @car_2 = Car.new("Toyota Prius", 1000, 48)
  end

  it 'exists' do
    # binding.pry
    expect(@dealership).to be_a(Dealership)
  end

end
