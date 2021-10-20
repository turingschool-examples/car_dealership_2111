require 'rspec'
require './lib/car'
require './lib/dealership'

RSpec.describe Dealership do
  before(:each) do
    @dealership = Dealership.new("Acme Auto", "123 Main Street")
  end

  describe '#initialize' do
    it 'creates class instance' do
      expect(@dealership).to be_instance_of Dealership
    end

    it 'has name' do
      expect(@dealership.name).to eq "Acme Auto"
    end

    it 'has address' do
      expect(@dealership.address).to eq("123 Main Street")
    end

    it 'has no inventory' do
      expect(@dealership.inventory).to eq([])
    end
  end

  describe '#inventory_count' do
    it 'counts cars in inventory' do
      expect(@dealership.inventory_count).to eq 0
    end
  end

  describe '#has_inventory' do
    it 'tells if there is no inventory' do
      expect(@dealership.inventory.length).to eq 0
      expect(@dealership.has_inventory?).to eq false
    end
  end


  describe '#add_car' do
    it 'adds car to inventory' do
      car_1 = Car.new("Ford Mustang", 1500, 36)
      car_2 = Car.new("Toyota Prius", 1000, 48)
      @dealership.add_car(car_1)
      @dealership.add_car(car_2)

      expect(@dealership.inventory).to eq([car_1, car_2])
      expect(@dealership.inventory_count).to eq 2
      expect(@dealership.has_inventory?).to eq true
    end
  end
end

RSpec.describe Dealership do
  before(:each) do
    @dealership = Dealership.new("Acme Auto", "123 Main Street")
    @car_1 = Car.new("Ford Mustang", 1500, 36)
    @car_2 = Car.new("Toyota Prius", 1000, 48)
    @car_3 = Car.new("Toyota Tercel", 500, 48)
    @car_4 = Car.new("Chevrolet Bronco", 1250, 24)
    @dealership.add_car(@car_1)
    @dealership.add_car(@car_2)
    @dealership.add_car(@car_3)
    @dealership.add_car(@car_4)
  end

  describe '#cars_by_make' do
    it 'returns array of cars with chosen make' do
      expect(@dealership.cars_by_make("Toyota")).to eq([@car_2, @car_3])
      expect(@dealership.cars_by_make("Ford")).to eq([@car_1])
    end
  end

  describe '#total_value' do
    it 'returns total value of month cost * loan for all cars' do
      expect(@dealership.total_value).to eq 156000
    end
  end

  describe '#dealer_details' do
    it 'returns valuea nd address of dealership in hash' do
      expect(@dealership.details).to eq ({"total_value" => 156000, "address" => "123 Main Street"})
    end
  end

  describe '#average_price_of_car' do
    it 'divides total value by number of cars' do
      expect(@dealership.average_price_of_car).to eq "39,000"
    end
  end

  describe '#format_number' do
    it 'separates numbers into groups of three and rejoins with comma as string' do
      expect(@dealership.format_number(154987)).to eq "154,987"
    end
  end

  describe '#cars_sorted_by_price' do
    it 'sorts cars cheapest to most expensive' do
      expect(@dealership.cars_sorted_by_price).to eq([@car_3, @car_4, @car_2, @car_1])
    end
  end

  describe '#inventory_hash' do
    it 'returns hash with make as key and array of cars as value' do
      expect(@dealership.inventory_hash).to be_a Hash

      expect(@dealership.inventory_hash).to eq({"Ford"=>[@car_1], "Toyota"=>[@car_2, @car_3], "Chevrolet"=>[@car_4]})
    end
  end
end
