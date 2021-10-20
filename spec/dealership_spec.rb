require './lib/car'
require './lib/dealership'

RSpec.describe Dealership do
  describe 'Iteration II' do
    before :each do
      @dealership = Dealership.new("Acme Auto", "123 Main Street")
      @car_1 = Car.new("Ford Mustang", 1500, 36)
      @car_2 = Car.new("Toyota Prius", 1000, 48)
    end

    it 'exists' do
      expect(@dealership).to be_a(Dealership)
    end

    it 'has attributes' do
      expect(@dealership.name).to eq("Acme Auto")
      expect(@dealership.address).to eq("123 Main Street")
      expect(@dealership.inventory).to eq([])
      expect(@dealership.inventory_count).to eq(0)
    end

    it 'can add cars' do
      @dealership.add_car(@car_1)
      @dealership.add_car(@car_2)

      expect(@dealership.inventory).to eq([@car_1, @car_2])
      expect(@dealership.inventory_count).to eq(2)
    end
  end

  describe "Iteration III" do
    describe 'inventory management' do
      before :each do
        @dealership = Dealership.new("Acme Auto", "123 Main Street")
        @car_1 = Car.new("Ford Mustang", 1500, 36)
        @car_2 = Car.new("Toyota Prius", 1000, 48)
        @car_3 = Car.new("Toyota Tercel", 500, 48)
        @car_4 = Car.new("Chevrolet Bronco", 1250, 24)
      end

      it 'has only has inventory if it has a car' do
        expect(@dealership.has_inventory?).to eq(false)

        @dealership.add_car(@car_1)

        expect(@dealership.has_inventory?).to eq(true)
      end

      it 'can display cars by make' do
        @dealership.add_car(@car_1)
        @dealership.add_car(@car_2)
        @dealership.add_car(@car_3)
        @dealership.add_car(@car_4)

        expect(@dealership.cars_by_make("Toyota")).to eq([@car_2, @car_3])
        expect(@dealership.cars_by_make("Ford")).to eq([@car_1])
      end

      it 'can display combined value of all cars' do
        @dealership.add_car(@car_1)
        @dealership.add_car(@car_2)
        @dealership.add_car(@car_3)
        @dealership.add_car(@car_4)

        expect(@dealership.total_value).to eq(156000)
      end

      it 'can display the details of the dealership' do
        @dealership.add_car(@car_1)
        @dealership.add_car(@car_2)
        @dealership.add_car(@car_3)
        @dealership.add_car(@car_4)

        expect(@dealership.details).to be_a(Hash)
        expect(@dealership.details.keys).to eq(["total_value", "address"])
        expect(@dealership.details.values).to eq([156000, "123 Main Street"])
      end
    end
  end

  describe 'Iteration IV' do
    before :each do
      @dealership = Dealership.new("Acme Auto", "123 Main Street")
      @car_1 = Car.new("Ford Mustang", 1500, 36) # 54000
      @car_2 = Car.new("Toyota Prius", 1000, 48) # 48000
      @car_3 = Car.new("Toyota Tercel", 500, 48) # 24000
      @car_4 = Car.new("Chevrolet Bronco", 1250, 24) #30000
      @dealership.add_car(@car_1)
      @dealership.add_car(@car_2)
      @dealership.add_car(@car_3)
      @dealership.add_car(@car_4)
    end

    it 'calculate the average price of total inventory' do
      expect(@dealership.average_price_of_car).to eq("39,000")
    end

    it 'can sort cars by price, lowest to highest' do
      expect(@dealership.cars_sorted_by_price).to eq([@car_3, @car_4, @car_2, @car_1])
    end

    it 'can return the inventory in a hash' do
      expect(@dealership.inventory_hash).to be_a(Hash)
      expect(@dealership.inventory_hash.keys).to eq(["Ford", "Toyota", "Chevrolet"])
      expect(@dealership.inventory_hash.values).to eq([[@car_1], [@car_2, @car_3], [@car_4]])
    end
  end
end
