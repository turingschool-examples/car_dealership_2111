require './lib/car'
require './lib/dealership'

RSpec.describe Car do
  it 'exists' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership).to be_a Dealership
  end

  it 'has inventory' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership.inventory).to eq([])
  end

  it '#inventory_count' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership.inventory_count).to eq(0)
  end

  it '#add_car' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford", "Mustang", 1500, 36)
    car_2 = Car.new("Toyota", "Prius", 1000, 48)
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    expect(dealership.inventory).to eq([car_1, car_2])
  end

  # it '#has' do
  #   dealership = Dealership.new("Acme Auto", "123 Main Street")
  #
  #   expect(dealership.inventory_count).to eq(0)
  # end
end
