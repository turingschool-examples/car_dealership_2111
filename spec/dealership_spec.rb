require './lib/car'
require './lib/dealership'
require 'pry'

RSpec.describe Dealership do
  subject {dealership = Dealership.new("Acme Auto", "123 Main Street")}

  it "exists" do

    expect(subject).to be_a Dealership
  end

  it "has an inventory" do
    expect(subject.inventory).to eq([])
    expect(subject.inventory_count).to eq(0)
  end

  it "can add cars to inventory" do
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)

    subject.add_car(car_1)
    subject.add_car(car_2)
    
    expect(subject.inventory).to eq([car_1, car_2])
    expect(subject.inventory_count).to eq(2)
  end
end
