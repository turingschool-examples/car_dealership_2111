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

  it 'has attributes' do
    expect(@dealership.name).to eq('Acme Auto')
    expect(@dealership.address).to eq('123 Main Street')
  end

  it 'has empty inventory by default' do
    expect(@dealership.inventory).to eq([])
  end

  it '#add_car' do
    @dealership.add_car(@car_1)
    @dealership.add_car(@car_2)
    expect(@dealership.inventory).to eq([@car_1, @car_2])
  end

  it '#inventory_count' do
    @dealership.add_car(@car_1)
    @dealership.add_car(@car_2)
    expect(@dealership.inventory_count).to eq(2)
  end
end
