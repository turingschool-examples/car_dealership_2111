require './lib/car'
require './lib/dealership'

describe Dealership do
  before(:each) do
    # @car = Car.new
    @dealership_1 = Dealership.new("Acme Auto", "123 Main Street")
    @car_1 = Car.new("Ford Mustang", 1500, 36)
    @car_2 = Car.new("Toyota Prius", 1000, 48)
    @car_3 = Car.new("Ford Focus", 2000, 24)
    @car_4 = Car.new("Ford Pinto", 2000, 1)
  end

  describe "#initialize" do
    it "creates a Dealership instance" do
      expect(@dealership_1).to be_a(Dealership)
    end
    it 'has an empty inventory' do
      expect(@dealership_1.inventory).to eq([])
    end
  end

  describe '#add_car' do
    it 'adds cars to inventory' do
      @dealership_1.add_car(@car_1)
      expect(@dealership_1.count).to eq(1)

      @dealership_1.add_car(@car_2)
      expect(@dealership_1.inventory[1].model).to eq('Prius')
    end
  end
  describe '#empty?' do
    it 'determines if the dealer has inventory' do
      expect(@dealership_1.has_inventory?).to be(false)
      @dealership_1.add_car(@car_1)
      expect(@dealership_1.has_inventory?).to be(true)
    end
  end

  describe '#cars_by_make' do
    it 'selects cars by manufacturer' do
      @dealership_1.add_car(@car_1)
      @dealership_1.add_car(@car_2)
      @dealership_1.add_car(@car_3)

      expect(@dealership_1.cars_by_make('Ford').length).to eq(2)
      expect(@dealership_1.cars_by_make('Toyota').length).to eq(1)
    end
  end

  describe '#total_value' do
    it 'calculates total inventory value' do
      @dealership_1.add_car(@car_1)
      @dealership_1.add_car(@car_2)
      @dealership_1.add_car(@car_3)
      expect(@dealership_1.total_value).to eq(150000)
    end
  end

  describe '#details' do
    it 'has correct details' do
      @dealership_1.add_car(@car_2)
      expect(@dealership_1.details).to be_a(Hash)
      expect(@dealership_1.details['address']).to eq('123 Main Street')
    end
  end

  describe 'average_price_of_car' do
    it 'calculates average vehicle price' do
      @dealership_1.add_car(@car_1)
      @dealership_1.add_car(@car_2)
      @dealership_1.add_car(@car_3)
      expect(@dealership_1.average_price_of_car).to eq(50000)
    end
  end

  describe '#cars_sorted_by_price' do
    it 'sorts cars by price' do
      @dealership_1.add_car(@car_1)
      @dealership_1.add_car(@car_2)
      @dealership_1.add_car(@car_3)
      @dealership_1.add_car(@car_4)
      # expect(@dealership.cars_sorted_by_price[0].model).to eq('Pinto')
    end
  end
end
