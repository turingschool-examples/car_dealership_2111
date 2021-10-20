require 'rspec'
require './lib/car'
require './lib/dealership'

describe Dealership do
  describe '#initialize' do
    it 'is an instance of Dealership' do
      dealership = Dealership.new("Acme Auto", "123 Main Street")
      expect(dealership).to be_a Dealership
    end
  end

  describe '#inventory' do
    it 'returns the inventory of the dealership' do
      dealership = Dealership.new("Acme Auto", "123 Main Street")
      expect(dealership.inventory).to eq([])
    end
  end

  describe '#inventory_count' do
    it 'returns the quantity of cars in inventory' do
      dealership = Dealership.new("Acme Auto", "123 Main Street")
      expect(dealership.inventory_count).to eq(0)
    end
  end

  describe '#add_car' do
    it 'adds the car object to dealership inventory' do
      dealership = Dealership.new("Acme Auto", "123 Main Street")
      car_1 = Car.new("Ford Mustang", 1500, 36)
      car_2 = Car.new("Toyota Prius", 1000, 48)
      dealership.add_car(car_1)
      dealership.add_car(car_2)
      expect(dealership.inventory).to eq([car_1, car_2]) # also re-tests #inventory
      expect(dealership.inventory_count).to eq(2)
    end
  end

  describe '#cars_by_make()' do
    it 'returns a list of cars based on make' do
      dealership = Dealership.new("Acme Auto", "123 Main Street")
      car_1 = Car.new("Ford Mustang", 1500, 36)
      car_2 = Car.new("Toyota Prius", 1000, 48)
      car_3 = Car.new("Toyota Tercel", 500, 48)
      car_4 = Car.new("Chevrolet Bronco", 1250, 24)
      dealership.add_car(car_1)
      dealership.add_car(car_2)
      dealership.add_car(car_3)
      dealership.add_car(car_4)
      expect(dealership.cars_by_make("Toyota")).to eq ([car_2, car_3])
    end
  end

  describe '#total_value' do
    it 'returns the total price of the cars in the dealership' do
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
  end

  describe '#details' do
    it 'returns the basic information of the dealership' do
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

  describe '#average_price_of_car' do
    it 'returns the average price of all cars in inventory' do
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
  end


end
