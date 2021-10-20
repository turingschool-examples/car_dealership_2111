require 'rspec'
require './lib/car'
require './lib/dealership'

RSpec.describe Dealership do

  it 'is an instance of Dealership' do
      dealership = Dealership.new("Acme Auto", "123 Main Street")

  end

  it 'has an empty inventory on creation' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership.inventory).to eq([])
  end

  it 'can read inventory size' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership.inventory_count).to eq(0)
  end

  it 'can add cars to inventory array' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)

    dealership.add_car(car_1)
    dealership.add_car(car_2)

    expected_array = [car_1, car_2]

    expect(dealership.inventory).to eq(expected_array)
    expect(dealership.inventory_count).to eq(2)
  end

  it 'can check if it has inventory (bool)' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership.has_inventory?).to eq false
  end

  it 'can check if it has inventory (bool) (with inventory)' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    dealership.add_car(car_1)

    expect(dealership.has_inventory?).to eq true
  end

  it 'can select cars of a given make' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    car_3 = Car.new("Toyota Tercel", 500, 48)
    car_4 = Car.new("Chevrolet Bronco", 1250, 24)

    dealership.add_car(car_1)
    dealership.add_car(car_2)
    dealership.add_car(car_3)
    dealership.add_car(car_4)

    expected_array = [car_2, car_3]



    expect(dealership.cars_by_make("Toyota")).to eq(expected_array)
  end

    it 'can get total value of dealership inventory' do

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

    it 'can get dealership details' do
      dealership = Dealership.new("Acme Auto", "123 Main Street")
      car_1 = Car.new("Ford Mustang", 1500, 36)
      car_2 = Car.new("Toyota Prius", 1000, 48)
      car_3 = Car.new("Toyota Tercel", 500, 48)
      car_4 = Car.new("Chevrolet Bronco", 1250, 24)

      dealership.add_car(car_1)
      dealership.add_car(car_2)
      dealership.add_car(car_3)
      dealership.add_car(car_4)

      expect(dealership.details).to eq({"total_value" => 156000, "address" => "123 Main Street"})


    end
end
