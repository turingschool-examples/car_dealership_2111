require './lib/car'
require './lib/dealership'

describe Dealership do
  before(:each) do
    # @car = Car.new
    @dealership_1 = Dealership.new("Acme Auto", "123 Main Street")
    @car_1 = Car.new("Ford Mustang", 1500, 36)
    @car_2 = Car.new("Toyota Prius", 1000, 48)
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
end
