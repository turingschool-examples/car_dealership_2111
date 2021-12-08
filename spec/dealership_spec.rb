require './lib/car'
require './lib/dealership'

RSpec.describe Dealership do
  # iteration 2
  it 'exists' do
    dealership = Dealership.new('Acme Auto', '123 Main Street')
    expect(dealership).to be_a(Dealership)
  end

  it 'has an inventory' do
    dealership = Dealership.new('Acme Auto', '123 Main Street')
    expect(dealership.inventory).to eq([])
  end

  it 'has an inventory count' do
    dealership = Dealership.new('Acme Auto', '123 Main Street')
    expect(dealership.inventory_count).to eq(0)
  end

  it 'has an new inventory and count ' do
    dealership = Dealership.new('Acme Auto', '123 Main Street')
    car_1 = Car.new('Ford Mustang', 1500, 36)
    car_2 = Car.new('Toyota Prius', 1000, 48)
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    expect(dealership.inventory).to eq([car_1, car_2])
    expect(dealership.inventory_count).to eq(2)
  end

  # Iteration 3
  it 'has an inventory' do
    dealership = Dealership.new('Acme Auto', '123 Main Street')
    expect(dealership.has_inventory?).to be false
  end

  it 'knows the cars by thier make' do
    dealership = Dealership.new('Acme Auto', '123 Main Street')
    car_1 = Car.new('Ford Mustang', 1500, 36)
    car_2 = Car.new('Toyota Prius', 1000, 48)
    car_3 = Car.new('Toyota Tercel', 500, 48)
    car_4 = Car.new('Chevrolet Bronco', 1250, 24)
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    dealership.add_car(car_3)
    dealership.add_car(car_4)
    expect(dealership.cars_by_make('Toyota')).to eq([car_2, car_3])
    expect(dealership.cars_by_make('Ford')).to eq([car_1])
  end

  it "has the total value of it's inventroy" do
    dealership = Dealership.new('Acme Auto', '123 Main Street')
    car_1 = Car.new('Ford Mustang', 1500, 36)
    car_2 = Car.new('Toyota Prius', 1000, 48)
    car_3 = Car.new('Toyota Tercel', 500, 48)
    car_4 = Car.new('Chevrolet Bronco', 1250, 24)
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    dealership.add_car(car_3)
    dealership.add_car(car_4)
    expect(dealership.cars_by_make('Toyota')).to eq([car_2, car_3])
    expect(dealership.total_value).to eq(156_000)
  end

  xit 'has deatils' do
    dealership = Dealership.new('Acme Auto', '123 Main Street')
    car_1 = Car.new('Ford Mustang', 1500, 36)
    car_2 = Car.new('Toyota Prius', 1000, 48)
    car_3 = Car.new('Toyota Tercel', 500, 48)
    car_4 = Car.new('Chevrolet Bronco', 1250, 24)
    dealership.add_car(car_1)
    dealership.add_car(car_2)
    dealership.add_car(car_3)
    dealership.add_car(car_4)
    expect(dealership.cars_by_make('Toyota')).to eq([car_2, car_3])
    expect(dealership.details).to eq({ total_value: 156_000, address: '123 Main Street' })
  end
end
