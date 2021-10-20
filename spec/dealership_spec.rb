require './lib/car'
require './lib/dealership'

RSpec.describe Dealership do
  before :each do
    @dealership = Dealership.new("Acme Auto", "123 Main Street")
  end

  it "exist" do
    expect(@dealership).to be_an_instance_of(Dealership)
  end
  it "checks the attributes of dealership" do
    expect(@dealership.name).to eq("Acme Auto")
    expect(@dealership.address).to eq("123 Main Street")
  end
  it "checks the inventory is an empty array" do
    expect(@dealership.inventory).to eq([])
  end
  it "checks the how many objects are in the inventory" do
    expect(@dealership.inventory_count).to eq(0)
  end

    before :each do
      @car_2 = Car.new("Ford Mustang", 1000, 48)
      @car_1 = Car.new("Toyota Prius", 1500, 36)
    end
      it "checks that there are new instances of car" do
        expect(@car_1).to be_an_instance_of(Car)
        expect(@car_2).to be_an_instance_of(Car)
      end

      it "checks that vehicles added to inventory" do
        @dealership.add_car(@car_1)
        @dealership.add_car(@car_2)
        expect(@dealership.inventory).to eq([@car_1, @car_2])
      end

      it "checks the inventory count" do
        @dealership.add_car(@car_1)
        @dealership.add_car(@car_2)
        expect(@dealership.inventory_count).to eq(2)
      end

end

RSpec.describe Car do
  before :each do
    @dealership = Dealership.new("Acme Auto", "123 Main Street")
  end

  it "exists" do
    expect(@dealership).to be_an_instance_of(Dealership)
  end
  it "checks if the dealership has any cars" do
    expect(@dealership.has_inventory?).to be(false)
  end

  before :each do
    @car_1 = Car.new("Ford Mustang", 1500, 36)
    @car_2 = Car.new("Toyota Prius", 1000, 48)
    @car_3 = Car.new("Toyota Tercel", 500, 48)
    @car_4 = Car.new("Chevrolet Bronco", 1250, 24)
  end

  it "checks if cars exist" do
    expect(@car_1).to be_an_instance_of(Car)
    expect(@car_2).to be_an_instance_of(Car)
    expect(@car_3).to be_an_instance_of(Car)
    expect(@car_4).to be_an_instance_of(Car)
  end


  it "checks that cars were added" do
    @dealership.add_car(@car_1)
    @dealership.add_car(@car_2)
    @dealership.add_car(@car_3)
    @dealership.add_car(@car_4)
    expect(@dealership.inventory_count).to eq(4)
  end

  xit "checks cars by the make" do
    expect(@dealership.cars_by_make("Toyota")).to eq([@car_2, @car_3])
    expect(@dealership.cars_by_make("Toyota")).to eq([@car_1])
  end

  it "checks the total value of the inventory" do
    @dealership.add_car(@car_1)
    @dealership.add_car(@car_2)
    @dealership.add_car(@car_3)
    @dealership.add_car(@car_4)
    expect(@dealership.total_value).to eq(156000)
  end

end
