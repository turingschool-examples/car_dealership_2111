require 'rspec'
require './lib/car'
require './lib/dealership'

RSpec.describe Dealership do
  let(:dealership) {Dealership.new('Acme Auto', '123 Main Street')}
  let(:car_1) {Car.new('Ford Mustang', 1500, 36)} # $54000
  let(:car_2) {Car.new('Toyota Prius', 1000, 48)} # $48000
  let(:car_3) {Car.new('Toyota Tercel', 500, 48)} # $24000
  let(:car_4) {Car.new('Chevrolet Bronco', 1250, 24)} # $30000
  let(:car_5) {Car.new('Chevrolet Classico', 500, 1)} # $500

  describe '#initialize' do
    it 'exists' do
      expect(dealership).to be_instance_of(Dealership)
    end

    it 'has a name' do
      expect(dealership.name).to eq('Acme Auto')
    end

    it 'has an address' do
      expect(dealership.address).to eq('123 Main Street')
    end

    it 'has no inventory' do
      expect(dealership.inventory).to eq([])
    end
  end

  # Test Dealership#inventory_count method.
  describe '#inventory_count' do
    it 'can count Car objects in inventory' do
      expect(dealership.inventory_count).to eq(0)
      dealership.add_car(car_1)
      expect(dealership.inventory_count).to eq(1)
      dealership.add_car(car_2)
      expect(dealership.inventory_count).to eq(2)
    end
  end
  
  # Test Dealership#add_car method.
  describe '#add_car' do
    it 'can add cars to inventory' do
      dealership.add_car(car_1)
      expect(dealership.inventory).to eq([car_1])
      dealership.add_car(car_2)
      expect(dealership.inventory).to eq([car_1, car_2])
    end
  end
  
  # Test Dealership#has_inventory? method.
  describe '#has_inventory?' do
    it 'can return false when inventory has one or less cars' do
      expect(dealership.has_inventory?).to eq(false)
      dealership.add_car(car_1)
      expect(dealership.has_inventory?).to eq(false)
    end
    
    it 'can return true when it has inventory' do
      dealership.add_car(car_1)
      expect(dealership.has_inventory?).to eq(false)
      dealership.add_car(car_2)
      expect(dealership.has_inventory?).to eq(true)
      dealership.add_car(car_3)
      expect(dealership.has_inventory?).to eq(true)
      dealership.add_car(car_4)
      expect(dealership.has_inventory?).to eq(true)
    end
  end
  
  # Test Dealership#cars_by_make method.
  describe '#cars_by_make' do
    it 'can  return cars when given a make' do
      dealership.add_car(car_1)
      dealership.add_car(car_2)
      dealership.add_car(car_3)
      dealership.add_car(car_4)
      expect(dealership.cars_by_make("Toyota")).to eq([car_2, car_3])
      expect(dealership.cars_by_make("Ford")).to eq([car_1])
    end
  end
  
  # Test Dealership#total_value method.
  describe '#total_value' do
    it 'can return the total dealership value' do
      dealership.add_car(car_1)
      dealership.add_car(car_2)
      dealership.add_car(car_3)
      dealership.add_car(car_4)
      expect(dealership.total_value).to eq(156000)      
    end
  end
  
  # Test Dealership#details method.
  describe '#details' do
    it 'can return total value, and address of dealership' do
      dealership.add_car(car_1)
      dealership.add_car(car_2)
      dealership.add_car(car_3)
      dealership.add_car(car_4)
      expect(dealership.details).to eq({'total_value' => 156000, 'address' => '123 Main Street'})      
    end
  end
  
  # Test Dealership#average_price_of_car method.
  describe '#average_price_of_car' do
    it 'can return the average price of a car below $1,000' do
      dealership.add_car(car_5)
      expect(dealership.average_price_of_car).to eq('500')
    end
    
    it 'can return the average price of the inventory' do
      dealership.add_car(car_1)
      dealership.add_car(car_2)
      dealership.add_car(car_3)
      dealership.add_car(car_4)
      expect(dealership.average_price_of_car).to eq('39,000')
    end
  end
  
  # Test Dealership#cars_sorted_by_price method.
  describe '#cars_sorted_by_price' do
    it 'can return the an array of Cars sorted by price' do
      dealership.add_car(car_1)
      dealership.add_car(car_2)
      dealership.add_car(car_3)
      dealership.add_car(car_4)
      expect(dealership.cars_sorted_by_price).to eq([car_3, car_4, car_2, car_1])
    end
  end
  
  # Test Dealership#inventory_hash method.
  describe '#inventory_hash' do
    it 'can return a hash of the inventory sorted by make' do
      dealership.add_car(car_1)
      dealership.add_car(car_2)
      dealership.add_car(car_3)
      dealership.add_car(car_4)
      expect(dealership.inventory_hash).to eq({'Ford'=> [car_1], 'Toyota'=> [car_2, car_3], 'Chevrolet'=> [car_4]})
    end
  end
end