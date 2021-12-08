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

  context "iteration-3" do
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    car_3 = Car.new("Toyota Tercel", 500, 48)
    car_4 = Car.new("Chevrolet Bronco", 1250, 24)
    subject {dealership = Dealership.new("Acme Auto", "123 Main Street")}

    it "has inventory?" do

      expect(subject.has_inventory?).to be false
    end

    it "can show cars by make" do
      subject.add_car(car_1)
      subject.add_car(car_2)
      subject.add_car(car_3)
      subject.add_car(car_4)

      expect(subject.cars_by_make("Toyota")).to eq([car_2, car_3])
      expect(subject.cars_by_make("Ford")).to eq([car_1])
    end

    it "can count total value of inventory" do
      subject.add_car(car_1)
      subject.add_car(car_2)
      subject.add_car(car_3)
      subject.add_car(car_4)

      expect(subject.total_value).to eq(156000)
    end

    it "shows dealership details" do
      subject.add_car(car_1)
      subject.add_car(car_2)
      subject.add_car(car_3)
      subject.add_car(car_4)

      expect(subject.details).to eq({"total_value" => 156000, "address" => "123 Main Street"})
    end
  end

  context "iteration-4" do
    car_1 = Car.new("Ford Mustang", 1500, 36)
    car_2 = Car.new("Toyota Prius", 1000, 48)
    car_3 = Car.new("Toyota Tercel", 500, 48)
    car_4 = Car.new("Chevrolet Bronco", 1250, 24)
    subject {dealership = Dealership.new("Acme Auto", "123 Main Street")}

    it "can return average price of car inventory" do
      subject.add_car(car_1)
      subject.add_car(car_2)
      subject.add_car(car_3)
      subject.add_car(car_4)

      expect(subject.average_price_of_car).to eq("39,000")
    end

    it "can sort cars by price" do
      subject.add_car(car_1)
      subject.add_car(car_2)
      subject.add_car(car_3)
      subject.add_car(car_4)

      expect(subject.cars_sorted_by_price).to eq([car_3, car_4, car_2, car_1])
    end

    it "can show cars in hash" do
      subject.add_car(car_1)
      subject.add_car(car_2)
      subject.add_car(car_3)
      subject.add_car(car_4)

      expect(subject.inventory_hash).to eq({"Ford" =>[car_1],
        "Toyota" => [car_2, car_3],
        "Chevrolet" => [car_4]})
    end
  end
end
