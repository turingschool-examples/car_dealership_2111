require 'rspec'
require './lib/car'
require './lib/dealership'
require 'pry'

RSpec.describe Dealership do
  it 'exists' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership).to be_a Dealership
  end

  it 'has an inventory' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership.inventory).to eq([])
  end

  it 'counts the inventory' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership.inventory_count).to be 0
  end

  it 'can add cars' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500,36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    expect(dealership.inventory).to eq([car_1, car_2])
    expect(dealership.inventory_count).to be 2
  end

  it 'reports on status of inventory' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership.has_inventory?).to be false

    car_1 = Car.new("Ford Mustang", 1500,36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    car_3 = Car.new("Toyota Tercel", 500, 48)
    car_4 = Car.new("Chevrolet Bronco", 1250, 24)

    cars = [car_1, car_2, car_3, car_4]
    cars.each do |car|
      dealership.add_car(car)
    end

    expect(dealership.has_inventory?).to be true
  end

  it 'gives cars by make' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    car_1 = Car.new("Ford Mustang", 1500,36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    car_3 = Car.new("Toyota Tercel", 500, 48)
    car_4 = Car.new("Chevrolet Bronco", 1250, 24)

    cars = [car_1, car_2, car_3, car_4]
    cars.each do |car|
      dealership.add_car(car)
    end

    expect(dealership.cars_by_make("Toyota")).to eq([car_2, car_3])
    expect(dealership.cars_by_make("Ford")).to eq([car_1])
  end

  it 'gives total value and details' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    car_1 = Car.new("Ford Mustang", 1500,36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    car_3 = Car.new("Toyota Tercel", 500, 48)
    car_4 = Car.new("Chevrolet Bronco", 1250, 24)

    cars = [car_1, car_2, car_3, car_4]
    cars.each do |car|
      dealership.add_car(car)
    end

    expect(dealership.total_value).to be 156000
    expect(dealership.details).to eq({"total_value" => 156000, "address" => "123 Main Street"})
  end

  it 'gives average car price' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    car_1 = Car.new("Ford Mustang", 1500,36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    car_3 = Car.new("Toyota Tercel", 500, 48)
    car_4 = Car.new("Chevrolet Bronco", 1250, 24)

    cars = [car_1, car_2, car_3, car_4]
    cars.each do |car|
      dealership.add_car(car)
    end

    expect(dealership.average_price_of_car).to be 39000
  end

  it 'sorts cars by price' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    car_1 = Car.new("Ford Mustang", 1500,36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    car_3 = Car.new("Toyota Tercel", 500, 48)
    car_4 = Car.new("Chevrolet Bronco", 1250, 24)

    cars = [car_1, car_2, car_3, car_4]
    cars.each do |car|
      dealership.add_car(car)
    end

    expect(dealership.cars_sorted_by_price).to eq([car_3, car_4, car_2, car_1])
  end

  it 'gives an inventory hash' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    car_1 = Car.new("Ford Mustang", 1500,36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    car_3 = Car.new("Toyota Tercel", 500, 48)
    car_4 = Car.new("Chevrolet Bronco", 1250, 24)

    cars = [car_1, car_2, car_3, car_4]
    cars.each do |car|
      dealership.add_car(car)
    end

    expect(dealership.inventory_hash).to eq({
      "Ford"=> [car_1],
      "Toyota"=> [car_2, car_3],
      "Chevrolet"=> [car_4]
      })
  end
end
