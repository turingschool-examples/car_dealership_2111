require './lib/dealership'

RSpec.describe Dealership do

  before(:each) do
    @dealership = Dealership.new("Acme Auto", "123 Main Street")
    @car_1 = Car.new("Ford Mustang", 1500, 36)
    @car_2 = Car.new("Toyota Prius", 1000, 48)
    @car_3 = Car.new("Toyota Tercel", 500, 48)
    @car_4 = Car.new("Tesla Model3", 2000, 36)
  end

  describe '#initialize' do
    it 'exists' do
      expect(@dealership).to be_a(Dealership)
    end

    it 'has a name' do
      expect(@dealership.name).to eq("Acme Auto")
    end

    it 'has an address' do
      expect(@dealership.address).to eq("123 Main Street")
    end
  end


  describe '#add_car' do
    it 'adds a care to the dealerships inventory' do
      @dealership.add_car(@car_1)
      expect(@dealership.inventory[0]).to eq(@car_1)
    end
  end

  describe '#inventory_count' do
    it 'returns the dealerships inventory count' do
      @dealership.add_car(@car_1)
      @dealership.add_car(@car_2)
      @dealership.add_car(@car_3)

      expect(@dealership.inventory_count).to eq(3)
    end
  end


  describe '#has_inventory?' do
    it 'returns true if it has an inventory' do
      @dealership.add_car(@car_1)

      expect(@dealership.has_inventory?).to eq(true)
    end
    it 'returns false if it does not have an inventory' do
      expect(@dealership.has_inventory?).to eq(false)
    end
  end


  describe '#cars_by_make' do
    it 'returns an array of cars with the same make' do
      @dealership.add_car(@car_1)
      @dealership.add_car(@car_2)
      @dealership.add_car(@car_3)
      @dealership.add_car(@car_4)

      expect(@dealership.cars_by_make('Toyota').length).to eq(2) #becase we added 2 toyota cards above
      expect(@dealership.cars_by_make('Not A Real Make').length).to eq(0)
      expect(@dealership.cars_by_make('Tesla').length).to eq(1)
    end
  end


  describe '#total_value' do
    it 'returns correct total value of the dealership' do
      @dealership.add_car(@car_1)
      @dealership.add_car(@car_2)
      @dealership.add_car(@car_3)
      @dealership.add_car(@car_4)

      expect(@dealership.total_value).to eq(198000)
    end
  end



  describe '#details' do
    it 'returns correct details' do
      @dealership.add_car(@car_1)
      @dealership.add_car(@car_2)
      @dealership.add_car(@car_3)
      @dealership.add_car(@car_4)
      expect(@dealership.details["total_value"]).to eq(198000)
      expect(@dealership.details["address"]).to eq("123 Main Street")
    end

  end





end
