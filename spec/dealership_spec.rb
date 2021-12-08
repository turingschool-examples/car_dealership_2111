require './lib/car'
require './lib/dealership'

RSpec.describe Dealership do
  before(:each) do
    @dealership = Dealership.new("Acme Auto", "123 Main Street")
    @car_1 = Car.new("Ford Mustang", 1500, 36)
    @car_2 = Car.new("Toyota Prius", 1000, 48)
    @car_3 = Car.new("Toyota Tercel", 500, 48)
    @car_4 = Car.new("Chevrolet Bronco", 1250, 24)
  end

  it 'exists' do
    expect(@dealership).to be_instance_of Dealership
  end

  it 'starts with no inventory' do
    expect(@dealership.has_inventory?).to be false
  end

  xit 'can add cars to inventory' do
  end

  xit 'can return cars by make' do
  end

  xit 'can return the total value of all cars in inventory' do
  end

  xit 'can return its details (total value, address) in a hash' do
  end
end
