require './lib/car'
require './lib/dealership'

RSpec.describe Dealership do
  before :each do
    @dealership = Dealership.new("Acme Auto", "123 Main Street")
    @car_1 = Car.new("Ford Mustang", 1500, 36)
    @car_2 = Car.new("Toyota Prius", 1000, 48)
  end

  it 'exists' do
    expect(@dealership).to be_an_instance_of(Dealership)
  end
end
