require 'rspec'
require 'pry'
require './lib/car'
require './lib/dealership'

RSpec.configure do |config|
  config.default_formatter = 'doc'
  config.mock_with :mocha
end

RSpec.describe 'dealership Spec Harness' do
  before(:each) do
    @car_1 = Car.new("Ford Mustang", 1500, 36)
    @car_2 = Car.new("Toyota Prius", 1000, 48)
    @car_3 = Car.new("Toyota Tercel", 500, 48)
    @car_4 = Car.new("Chevrolet Bronco", 1250, 24)
  end

  describe 'Iteration 1' do
    it "1. Car Creation" do
      expect(Car).to respond_to(:new).with(3).argument
      expect(@car_1).to be_an_instance_of(Car)
      expect(@car_1).to respond_to(:make).with(0).argument
      expect(@car_1.make).to eq('Ford')
      expect(@car_1).to respond_to(:model).with(0).argument
      expect(@car_1.model).to eq('Mustang')
      expect(@car_1).to respond_to(:monthly_payment).with(0).argument
      expect(@car_1.monthly_payment).to eq(1500)
      expect(@car_1).to respond_to(:loan_length).with(0).argument
      expect(@car_1.loan_length).to eq(36)
    end

    it "2. Car #total_cost" do
      expect(@car_1).to respond_to(:total_cost).with(0).argument
      expect(@car_1.total_cost).to eq(54000)
    end

    it "3. Car #color" do
      expect(@car_1).to respond_to(:color).with(0).argument
      expect(@car_1.color).to eq(nil)
    end

    it "4. Car #paint!" do
      expect(@car_1).to respond_to(:paint!).with(1).argument
      @car_1.paint!(:blue)
      expect(@car_1.color).to eq(:blue)
    end
  end

  describe 'Iteration 2' do
    before(:each) do
      @dealership = Dealership.new("Acme Auto", "123 Main Street")
    end

    it "5. Dealership Creation" do
      expect(Dealership).to respond_to(:new).with(2).argument
      expect(@dealership).to be_an_instance_of(Dealership)
      expect(@dealership).to respond_to(:inventory).with(0).argument
      expect(@dealership.inventory).to eq([])
      expect(@dealership).to respond_to(:inventory_count).with(0).argument
      expect(@dealership.inventory_count).to eq(0)
    end

    it "6. Dealership #add_car" do
      expect(@dealership).to respond_to(:add_car).with(1).argument
      @dealership.add_car(@car_1)
      @dealership.add_car(@car_2)
      expect(@dealership.inventory).to eq([@car_1, @car_2])
      expect(@dealership.inventory_count).to eq(2)
    end
  end

  describe 'Iteration 3' do
    before(:each) do
      @dealership = Dealership.new("Acme Auto", "123 Main Street")
      @dealership.add_car(@car_1)
      @dealership.add_car(@car_2)
      @dealership.add_car(@car_3)
      @dealership.add_car(@car_4)
    end

    it "7. Dealership #has_inventory?" do
      expect(@dealership).to respond_to(:has_inventory?).with(0).argument
      expect(@dealership.has_inventory?).to eq(false)
    end

    it "8. Dealership #cars_by_make" do
      expect(@dealership).to respond_to(:cars_by_make).with(1).argument
      expect(@dealership.cars_by_make("Toyota")).to eq([@car_2, @car_3])
      expect(@dealership.cars_by_make("Ford")).to eq([@car_1])
    end

    it "9. Dealership #total_value" do
      expect(@dealership).to respond_to(:total_value).with(0).argument
      expect(@dealership.total_value).to eq(156000)
    end

    it "10. Dealership #details" do
      expect(@dealership).to respond_to(:details).with(0).argument
      expected = {
        "total_value" => 156000,
        "address" => "123 Main Street"
      }
      expect(@dealership.details).to eq(expected)
    end
  end

  describe "Iteration 4" do
    before(:each) do
      @dealership = Dealership.new("Acme Auto", "123 Main Street")
      @dealership.add_car(@car_1)
      @dealership.add_car(@car_2)
      @dealership.add_car(@car_3)
      @dealership.add_car(@car_4)
    end

    it "11. Dealership #average_price_of_car" do
      expect(@dealership).to respond_to(:average_price_of_car).with(0).argument
      expect(@dealership.average_price_of_car).to eq("39,000")
    end

    it "12. Dealership #cars_sorted_by_price" do
      expect(@dealership).to respond_to(:cars_sorted_by_price).with(0).argument
      expect(@dealership.cars_sorted_by_price).to eq([@car_3, @car_4, @car_2, @car_1])
    end

    it "13. Dealership #inventory_hash" do
      expect(@dealership).to respond_to(:inventory_hash).with(0).argument
      expect(@dealership.inventory_hash).to have_key("Ford")
      expect(@dealership.inventory_hash).to have_key("Toyota")
      expect(@dealership.inventory_hash).to have_key("Chevrolet")
      expect(@dealership.inventory_hash["Ford"]).to be_an(Array)
      expect(@dealership.inventory_hash["Ford"]).to include(@car_1)
      expect(@dealership.inventory_hash["Toyota"]).to be_an(Array)
      expect(@dealership.inventory_hash["Toyota"]).to include(@car_2, @car_3)
      expect(@dealership.inventory_hash["Chevrolet"]).to be_an(Array)
      expect(@dealership.inventory_hash["Chevrolet"]).to include(@car_4)
    end
  end
end
