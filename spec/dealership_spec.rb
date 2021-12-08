require 'rspec'
require './lib/car'
require './lib/dealership'

describe Dealership do
  it 'exists' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership).to be_a(Dealership)
  end

  it 'has a name' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership.name).to eq("Acme Auto")
  end

  it 'has an address' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")

    expect(dealership.address).to eq("123 Main Street")
  end

  it 'initially has an empty array of inventory and can count inventory' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    expect(dealership.inventory).to eq([])
    expect(dealership.inventory_count).to eq(0)
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    dealership.add_car(car_1)
    expect(dealership.inventory_count).to be(1)
    expect(dealership.inventory).to eq([car_1])
    dealership.add_car(car_2)
    expect(dealership.inventory).to eq([car_1, car_2])
    expect(dealership.inventory_count).to be(2)
  end

  it '#has_inventory?' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    expect(dealership.has_inventory?).to be(false)
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    car_3 = Car.new("Toyota Tercel", 500, 48)
    car_4 = Car.new("Chevrolet Bronco", 1250, 24)
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    dealership.add_car(car_3)
    dealership.add_car(car_4)
    expect(dealership.has_inventory?).to be(true)
  end

  it 'can tell you the vehicles by selected make in inventory' do
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
  end

  it 'can tell you the total value of cars in the dealership' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    car_3 = Car.new("Toyota Tercel", 500, 48)
    car_4 = Car.new("Chevrolet Bronco", 1250, 24)
    dealership.add_car(car_1)
    expect(dealership.total_value).to eq(54000)
    dealership.add_car(car_2)
    dealership.add_car(car_3)
    dealership.add_car(car_4)
    expect(dealership.total_value).to eq(156000)
  end

  it 'can create details in a hash' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    car_3 = Car.new("Toyota Tercel", 500, 48)
    car_4 = Car.new("Chevrolet Bronco", 1250, 24)
    dealership.add_car(car_1)
    expect(dealership.details).to eq({"total_value" => 54000, "address" => "123 Main Street"})
    dealership.add_car(car_2)
    dealership.add_car(car_3)
    dealership.add_car(car_4)
    expect(dealership.details).to eq({"total_value" => 156000, "address" => "123 Main Street"})
  end

  it 'can list average price of cars' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    car_3 = Car.new("Toyota Tercel", 500, 48)
    car_4 = Car.new("Chevrolet Bronco", 1250, 24)
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    dealership.add_car(car_3)
    dealership.add_car(car_4)
    expect(dealership.average_price_of_car).to eq(39000)
  end

  it 'can sort cars by price' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    car_3 = Car.new("Toyota Tercel", 500, 48)
    car_4 = Car.new("Chevrolet Bronco", 1250, 24)
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    dealership.add_car(car_3)
    dealership.add_car(car_4)
    expect(dealership.cars_sorted_by_price).to eq([car_1, car_2, car_3, car_4])
  end

  it 'can make an inventory hash' do
    dealership = Dealership.new("Acme Auto", "123 Main Street")
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    car_3 = Car.new("Toyota Tercel", 500, 48)
    car_4 = Car.new("Chevrolet Bronco", 1250, 24)
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    dealership.add_car(car_3)
    dealership.add_car(car_4)
    expect(dealership.inventory_hash).to eq({"Ford"=>[car_1], "Toyota"=>[car_2, car_3],"Chevrolet"=>[car_4]})
  end
end
