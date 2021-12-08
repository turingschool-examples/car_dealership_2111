require 'rspec'
require './lib/car'
require './lib/dealership'

RSpec.describe Dealership do
  describe 'Iteration II' do
  let(:car_1) {Car.new("Ford Mustang", 1500, 36)}
  let(:car_2) {Car.new("Toyota Prius", 1000, 48)}
  let (:dealership) {Dealership.new("Acme Auto", "123 Main Street")}



  it 'exists' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    expect(dealership).to be_a(Dealership)
  end

  it 'has attributes' do
    expect(dealership.name).to eq("Acme Auto")
    expect(dealership.address). to eq("123 Main Street")
  end

  it 'has inventory' do
  expect(dealership.inventory).to eq([])
end

it 'counts inventory' do
expect(dealership.inventory_count).to eq(0)
end

it 'adds cars' do
  dealership.add_car(car_1)
  dealership.add_car(car_2)
  expect(dealership.inventory).to eq([car_1, car_2])
  expect(dealership.inventory_count).to eq(2)
  end

end
end
