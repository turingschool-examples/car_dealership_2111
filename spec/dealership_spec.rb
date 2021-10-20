require "rspec"
require './lib/car'
require "./lib/dealership"

describe Dealership do
  let(:dealership) {Dealership.new("Acme Auto", "123 Main Street")}
  let(:car_1) {Car.new("Ford Mustang", 1500, 36)}
  let(:car_2) {Car.new("Toyota Prius", 1000, 48)}
  let(:car_3) {Car.new("Toyota Tercel", 500, 48)}
  let(:car_4) {Car.new("Chevrolet Bronco", 1250, 24)}

  it 'exists' do
    expect(dealership).to be_an_instance_of(Dealership)
  end

  it 'attributes' do
    expect(dealership.inventory).to eq([])
  end

  it 'can count inventory' do
    expect(dealership.inventory_count).to eq(0)
  end

  it 'can add cars to the inventory' do
    dealership.add_car(car_1)
    dealership.add_car(car_2)

    expect(dealership.inventory).to eq([car_1, car_2])
    expect(dealership.inventory_count).to eq(2)
  end

  it 'can check if it has inventory' do
    expect(dealership.has_inventory?).to be(false)
  end

  it 'can grou cars by make' do
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    dealership.add_car(car_3)
    dealership.add_car(car_4)

    expect(dealership.cars_by_make("Toyota")).to eq([car_2, car_3])
    expect(dealership.cars_by_make("Ford")).to eq([car_1])
  end

  it 'can determine current total value' do
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    dealership.add_car(car_3)
    dealership.add_car(car_4)

    expect(dealership.total_value).to eq(156_000)
  end

  it 'can have deatils listed together in a hash' do
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    dealership.add_car(car_3)
    dealership.add_car(car_4)

    expect(dealership.details).to eq({"total_value" => 156000, "address" => "123 Main Street"})
  end

  it 'can determine the average cost of a car' do
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    dealership.add_car(car_3)
    dealership.add_car(car_4)

    expect(dealership.average_price_of_car).to eq("39,000")
  end

  it 'can sort cars by price' do
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    dealership.add_car(car_3)
    dealership.add_car(car_4)

    expect(dealership.cars_sorted_by_price).to eq([car_3, car_4, car_2, car_1])
  end

  it 'can group cars by manufacturer' do
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    dealership.add_car(car_3)
    dealership.add_car(car_4)
    
    expected = {"Ford"=> [car_1],
    "Toyota"=> [car_2, car_3],
    "Chevrolet"=> [car_4]}

    expect(dealership.inventory_hash).to eq(expected)
  end
end
