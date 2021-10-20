require 'rspec'
require './lib/car'
require './lib/dealership'

RSpec.describe Dealership do
  it 'exists' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    expect(dealership).to be_instance_of(Dealership)
  end

  it 'has name' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    expect(dealership.dealer_name).to eq("Acme Auto")
  end

  it 'has an address' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    expect(dealership.address).to eq("123 Main Street")
  end

  it 'has inventory' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    expect(dealership.inventory).to eq([])
  end

  it 'has inventory count' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    expect(dealership.inventory_count).to eq(0)
  end

  it 'has two cars' do
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    expect(dealership.inventory).to eq([car_1, car_2])
    expect(dealership.inventory_count).to eq(2)
  end

  it 'has inventory?' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership.has_inventory?).to eq(false)

    car_1 = Car.new("Ford Mustang", 1500, 36)
    dealership.add_car(car_1)
    expect(dealership.has_inventory?).to eq(true)
    expect(dealership.inventory_count).to eq(1)

  end

  it 'has cars by make' do

    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership.has_inventory?).to eq(false)


    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    car_3 = Car.new("Toyota Tercel", 500, 48)
    car_4 = Car.new("Chevrolet Bronco", 1250, 24)
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    dealership.add_car(car_1)
    dealership.add_car(car_2)
    dealership.add_car(car_3)
    dealership.add_car(car_4)
    expect(dealership.cars_by_make("Toyota")).to eq([car_2, car_3])

  end

  it 'has total value of cars' do

    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    car_3 = Car.new("Toyota Tercel", 500, 48)
    car_4 = Car.new("Chevrolet Bronco", 1250, 24)
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    dealership.add_car(car_1)
    dealership.add_car(car_2)
    dealership.add_car(car_3)
    dealership.add_car(car_4)
    expect(dealership.total_value).to eq(156000)
  end

  it 'has dealership details' do
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    car_3 = Car.new("Toyota Tercel", 500, 48)
    car_4 = Car.new("Chevrolet Bronco", 1250, 24)
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    dealership.add_car(car_1)
    dealership.add_car(car_2)
    dealership.add_car(car_3)
    dealership.add_car(car_4)
    expect(dealership.total_value).to eq(156000)
    expect(dealership.details).to eq({"total_value" => 156000,
      "address" => "123 Main Street"})
    end

    it 'has the average price of cars' do
      car_1 = Car.new("Ford Mustang", 1500, 36)
      car_2 = Car.new("Toyota Prius", 1000, 48)
      car_3 = Car.new("Toyota Tercel", 500, 48)
      car_4 = Car.new("Chevrolet Bronco", 1250, 24)
      dealership = Dealership.new("Acme Auto", "123 Main Street")

      dealership.add_car(car_1)
      dealership.add_car(car_2)
      dealership.add_car(car_3)
      dealership.add_car(car_4)
      expect(dealership.total_value).to eq(156000)
      expect(dealership.average_price_of_car).to eq(39000)
    end

    it 'sorts cars by price' do
      car_1 = Car.new("Ford Mustang", 1500, 36)
      car_2 = Car.new("Toyota Prius", 1000, 48)
      car_3 = Car.new("Toyota Tercel", 500, 48)
      car_4 = Car.new("Chevrolet Bronco", 1250, 24)
      dealership = Dealership.new("Acme Auto", "123 Main Street")

      dealership.add_car(car_1)
      dealership.add_car(car_2)
      dealership.add_car(car_3)
      dealership.add_car(car_4)
      expect(dealership.total_value).to eq(156000)
      expect(dealership.average_price_of_car).to eq(39000)
      expect(dealership.cars_sorted_by_price).to eq([car_3, car_2, car_4, car_1])
    end

    it 'has inventory hash' do
      car_1 = Car.new("Ford Mustang", 1500, 36)
      car_2 = Car.new("Toyota Prius", 1000, 48)
      car_3 = Car.new("Toyota Tercel", 500, 48)
      car_4 = Car.new("Chevrolet Bronco", 1250, 24)
      dealership = Dealership.new("Acme Auto", "123 Main Street")

      dealership.add_car(car_1)
      dealership.add_car(car_2)
      dealership.add_car(car_3)
      dealership.add_car(car_4)
      expect(dealship.inventory_hash).to eq({"Ford"=>[car_1],
        "Toyota"=>[car_2, car_3],
        "Chevrolet" => [car_4]})

      end
    end
