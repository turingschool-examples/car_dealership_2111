require './lib/car'
require './lib/dealership'

RSpec.describe Dealership do
  it 'exists' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    expect(dealership).to be_an_instance_of(Dealership)
  end

  it 'has an empty inventory array by default' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    expect(dealership.inventory).to eq []
  end

  it 'has an inventory count of zero by default' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    expect(dealership.inventory_count).to eq(0)
  end

  it 'can add cars to dealership' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    expect(dealership.inventory).to eq([car_1, car_2])
    expect(dealership.inventory_count).to eq(2)
  end

  it 'returns accurate boolean for has inventory?' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    dealership.has_inventory?
    expect(dealership.has_inventory?).to eq false
  end

  it 'cars_by_make' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    car_3 = Car.new("Toyota Tercel", 500, 48)
    car_4 = Car.new("Chevrolet Bronco", 1250, 24)
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    dealership.add_car(car_3)
    dealership.add_car(car_4)
    dealership.has_inventory?
    expect(dealership.has_inventory?).to eq true
    expect(dealership.cars_by_make("Toyota")).to eq([car_2, car_3])
  end

  it 'total_value' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    expect(dealership.has_inventory?).to eq false
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

  it 'details' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    expect(dealership.has_inventory?).to eq false
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

  it 'total_value' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    expect(dealership.has_inventory?).to eq false
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
end