require 'rspec'
require './lib/car'
require './lib/dealership'

RSpec.describe Dealership do
  it 'exists' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership).to be_a Dealership
  end

  it 'has inventory' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership.inventory).to eq([])
  end

  it 'starts with zero inventory' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership.inventory_count).to be(0)
  end

  it 'can add cars to inventory' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    dealership.add_car(car_1)
    dealership.add_car(car_2)

    expect(dealership.inventory_count).to be(2)
    expect(dealership.inventory[0]).to be_a(Car)
    expect(dealership.inventory[1]).to be_a(Car)
  end

  it 'can tell if there is no inventory' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    expect(dealership.has_inventory?).to be(false)

    car_1 = Car.new("Ford Mustang", 1500, 36)
    dealership.add_car(car_1)
    expect(dealership.has_inventory?).to be(true)
  end

  it 'can return cars by make' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    car_3 = Car.new("Toyota Tercel", 500, 48)
    car_4 = Car.new("Chevrolet Bronco", 1250, 24)
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    dealership.add_car(car_3)
    dealership.add_car(car_4)

    expect(dealership.cars_by_make("Toyota").size).to be(2)
    expect(dealership.cars_by_make("Toyota").first.make).to eq("Toyota")
    expect(dealership.cars_by_make("Toyota").last.make).to eq("Toyota")
  end

  it 'can return total_value' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    car_3 = Car.new("Toyota Tercel", 500, 48)
    car_4 = Car.new("Chevrolet Bronco", 1250, 24)
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    dealership.add_car(car_3)
    dealership.add_car(car_4)

    expect(dealership.total_value).to be(156000)
  end

  it 'can provide details' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    car_3 = Car.new("Toyota Tercel", 500, 48)
    car_4 = Car.new("Chevrolet Bronco", 1250, 24)
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    dealership.add_car(car_3)
    dealership.add_car(car_4)

    expect(dealership.details).to be_a(Hash)
    expect(dealership.details.keys).to eq(["total_value", "address"])
    expect(dealership.details.values).to eq([156000, "123 Main Street"])
  end

  it 'gives average_price_of_car' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    car_3 = Car.new("Toyota Tercel", 500, 48)
    car_4 = Car.new("Chevrolet Bronco", 1250, 24)
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    dealership.add_car(car_3)
    dealership.add_car(car_4)

    expect(dealership.average_price_of_car).to eq("39,000")
  end

  it 'sorts by price' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    car_3 = Car.new("Toyota Tercel", 500, 48)
    car_4 = Car.new("Chevrolet Bronco", 1250, 24)
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    dealership.add_car(car_3)
    dealership.add_car(car_4)

    expect(dealership.cars_sorted_by_price.size).to eq(4)
    expect(dealership.cars_sorted_by_price[0].model).to eq("Tercel")
    expect(dealership.cars_sorted_by_price[1].model).to eq("Bronco")
    expect(dealership.cars_sorted_by_price[2].model).to eq("Prius")
    expect(dealership.cars_sorted_by_price[3].model).to eq("Mustang")
  end

  it 'gives inventory hash' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    car_3 = Car.new("Toyota Tercel", 500, 48)
    car_4 = Car.new("Chevrolet Bronco", 1250, 24)
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    dealership.add_car(car_3)
    dealership.add_car(car_4)

    expect(dealership.inventory_hash).to be_a(Hash)
    expect(dealership.inventory_hash.keys).to eq(["Ford", "Toyota", "Chevrolet"])
    expect(dealership.inventory_hash.values.flatten.size).to eq(4)
    expect(dealership.inventory_hash.values.flatten[0]).to be_a(Car)
    expect(dealership.inventory_hash.values.flatten[1]).to be_a(Car)
    expect(dealership.inventory_hash.values.flatten[2]).to be_a(Car)
    expect(dealership.inventory_hash.values.flatten[3]).to be_a(Car)
  end
end
