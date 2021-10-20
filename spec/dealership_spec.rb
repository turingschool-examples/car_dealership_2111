require 'rspec'
require './lib/dealership'
require './lib/car'

RSpec.describe Dealership do

  it 'exists' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership).to be_a Dealership
  end

  it 'has an inventory' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership.inventory).to eq([])
  end

  it 'can count the inventory' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership.inventory_count).to eq(0)
  end

  it 'can add cars to the inventory' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    dealership.add_car(car_1)
    dealership.add_car(car_2)

    expect(dealership.inventory).to eq([car_1, car_2])
  end

  it 'can return the proper count in the inventory' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    dealership.add_car(car_1)
    dealership.add_car(car_2)

    expect(dealership.inventory_count).to eq(2)
  end

  it '#has_inventory? will say dealership inventory <1' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    dealership.add_car(car_1)

    expect(dealership.has_inventory?).to be false
  end

  it '#has_inventory? will say dealership inventory >1' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    car_3 = Car.new("Toyota Tercel", 500, 48)
    car_4 = Car.new("Chevrolet Bronco", 1250, 24)
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    dealership.add_car(car_3)
    dealership.add_car(car_4)

    expect(dealership.has_inventory?).to be true
  end

  it '#cars_by_make will return cars with certain brand' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    car_3 = Car.new("Toyota Tercel", 500, 48)
    car_4 = Car.new("Chevrolet Bronco", 1250, 24)
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    dealership.add_car(car_3)
    dealership.add_car(car_4)

    expect(dealership.cars_by_make("Toyota")).to eq([car_2, car_3])
    expect(dealership.cars_by_make("Ford")).to eq([car_1])
    expect(dealership.cars_by_make("Chevrolet")).to eq([car_4])
  end

  it '#total_value will return total cost of cars from loan payments' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    car_3 = Car.new("Toyota Tercel", 500, 48)
    car_4 = Car.new("Chevrolet Bronco", 1250, 24)
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    dealership.add_car(car_3)
    dealership.add_car(car_4)

    expect(dealership.total_value).to eq(156000)
  end

  it '#details will return the total value and address of the dealership' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    car_3 = Car.new("Toyota Tercel", 500, 48)
    car_4 = Car.new("Chevrolet Bronco", 1250, 24)
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    dealership.add_car(car_3)
    dealership.add_car(car_4)
    dealership.total_value

    expect(dealership.details).to eq({"total_value" => 156000, "address" => "123 Main Street"})
  end

  it '#average_price_of_car will return average price of all cars' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    car_3 = Car.new("Toyota Tercel", 500, 48)
    car_4 = Car.new("Chevrolet Bronco", 1250, 24)
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    dealership.add_car(car_3)
    dealership.add_car(car_4)
    dealership.total_value


    expect(dealership.average_price_of_car).to eq("39000")
  end

  xit '#cars_sorted_by_price will return cars sorted by price' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    car_3 = Car.new("Toyota Tercel", 500, 48)
    car_4 = Car.new("Chevrolet Bronco", 1250, 24)
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    dealership.add_car(car_3)
    dealership.add_car(car_4)
    dealership.total_value

    expect(dealership.cars_sorted_by_price).to eq([car_1, car_2, car_4, car_3])
  end
end
