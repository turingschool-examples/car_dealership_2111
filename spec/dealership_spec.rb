#Begin Iteration 2
require './lib/car'
require './lib/dealership'

RSpec.describe Dealership do

  before(:each) do
    @dealership = Dealership.new("Acme Auto", "123 Main Street")
    @car_1 = Car.new("Ford Mustang", 1500, 36)
    @car_2 = Car.new("Toyota Prius", 1000, 48)
    @car_3 = Car.new("Toyota Tercel", 500, 48)
    @car_4 = Car.new("Chevrolet Bronco", 1250, 24)
    end

  describe '#initialize' do
    it 'is a Dealership class' do
      expect(@dealership).to be_a(Dealership)
    end

    it 'inventory is empty by default' do
      expect(@dealership.inventory).to eq([])
      expect(@dealership.inventory_count).to eq(0)
    end
  end

  describe '#add car' do
    it 'can add a car to the inventory' do
      @dealership.add_car(@car_1)
      @dealership.add_car(@car_2)

      expect(@dealership.inventory).to eq([@car_1, @car_2])
      expect(@dealership.inventory_count).to eq(2)
    end
  end

  #Begin Iteration 3
  describe '#has_inventory?' do
    it 'boolean returns for having inventory' do
      expect(@dealership.has_inventory?).to be(false)

      @dealership.add_car(@car_1)
      @dealership.add_car(@car_2)

      expect(@dealership.has_inventory?).to be(true)
    end
  end

  describe '#cars_by_make' do
    it 'returns the cars of a specific make' do
      @dealership.add_car(@car_1)
      @dealership.add_car(@car_2)
      @dealership.add_car(@car_3)
      @dealership.add_car(@car_4)

      expect(@dealership.cars_by_make('Toyota')).to eq([@car_2, @car_3])
      expect(@dealership.cars_by_make('Ford')).to eq([@car_1])
    end
  end

  describe '#total_value' do
    it 'returns the value of the whole inventory' do
      @dealership.add_car(@car_1)
      @dealership.add_car(@car_2)
      @dealership.add_car(@car_3)
      @dealership.add_car(@car_4)

      expect(@dealership.total_value).to eq(156000)
    end
  end

  describe '#details' do
    it 'returns the dealerships details' do
      @dealership.add_car(@car_1)
      @dealership.add_car(@car_2)
      @dealership.add_car(@car_3)
      @dealership.add_car(@car_4)

      expect(@dealership.details).to eq({'total_value' => 156000, 'address' => "123 Main Street"})
    end
  end

  # Begin Iteration 4
  describe '#average_price_of_car' do
    it 'averages the price of all the cars in inventory' do
      @dealership.add_car(@car_1)
      @dealership.add_car(@car_2)
      @dealership.add_car(@car_3)
      @dealership.add_car(@car_4)

      expect(@dealership.average_price_of_car).to eq("39,000")
    end
  end

  describe '#cars_sorted_by_price' do
    it 'sorts cars by increasing value' do
      @dealership.add_car(@car_1)
      @dealership.add_car(@car_2)
      @dealership.add_car(@car_3)
      @dealership.add_car(@car_4)

      expect(@dealership.cars_sorted_by_price).to eq([@car_3, @car_4, @car_2, @car_1])
    end
  end

  describe '#inventory_hash' do
    it 'groups cars by the make' do
      @dealership.add_car(@car_1)
      @dealership.add_car(@car_2)
      @dealership.add_car(@car_3)
      @dealership.add_car(@car_4)

      expect(@dealership.inventory_hash).to eq({
        "Ford" => [@car_1],
        "Toyota" => [@car_2, @car_3],
        "Chevrolet" => [@car_4]
        })
    end
  end
end
