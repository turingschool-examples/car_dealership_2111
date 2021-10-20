require './lib/car'
require './lib/dealership'

RSpec.describe Dealership do
  it 'exists' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership).to be_instance_of(Dealership)
  end

  it 'starts with an empty inventory' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership.inventory).to eq([])
  end

  it 'counts items in the inventory' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership.inventory_count).to eq(0)
  end

  it 'adds cars to inventory' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)

    dealership.add_car(car_1)
    dealership.add_car(car_2)

    expect(dealership.inventory).to eq(["Ford Mustang", "Toyota Prius"])
  end

  it 'counts items in the inventory' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)

    dealership.add_car(car_1)
    dealership.add_car(car_2)

    expect(dealership.inventory_count).to eq(2)
  end




end
# pry(main)> dealership.inventory
# #=> [#<Car:0x00007fa53b9ca0a8...>, #<Car:0x00007fccd2985f48...>]
#
# pry(main)> dealership.inventory_count
# #=> 2
