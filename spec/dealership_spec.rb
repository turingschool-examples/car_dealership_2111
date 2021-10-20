require './lib/car'
require './lib/dealership'

RSpec.describe "Dealership" do
  before(:each) do
    @dealership = Dealership.new("Acme Auto", "123 Main Street")
    @car_1      = Car.new("Ford Mustang", 1500, 36)
    @car_2      = Car.new("Toyota Prius", 1000, 48)
    @car_3      = Car.new("Toyota Tercel", 500, 48)
    @car_4      = Car.new("Chevrolet Bronco", 1250, 24)
  end

  it "exists" do
    expect(@dealership).to be_a Dealership
  end

  it "has attributes" do
    expect(@dealership.name).to eq("Acme Auto")
    expect(@dealership.address).to eq("123 Main Street")
    expect(@dealership.inventory).to eq([])
  end

  it "can add cars to its inventory" do
    @dealership.add_car(@car_1)
    @dealership.add_car(@car_2)

    expect(@dealership.inventory).to eq([@car_1, @car_2])
  end

  it "can count how many cars it has in inventory " do
    @dealership.add_car(@car_1)
    @dealership.add_car(@car_2)

    expect(@dealership.inventory_count).to eq 2
  end

  it "can give a boolean response if it has inventory or not" do
    expect(@dealership.has_inventory?).to eq false

    @dealership.add_car(@car_1)

    expect(@dealership.has_inventory?).to eq true
  end

  it "can list cars in inventory by make" do
    @dealership.add_car(@car_1)
    @dealership.add_car(@car_2)
    @dealership.add_car(@car_3)
    @dealership.add_car(@car_4)

    expect(@dealership.cars_by_make("Toyota")).to eq([@car_2, @car_3])
    expect(@dealership.cars_by_make("Ford")).to eq([@car_1])
  end

  it "can show the toal calue of all inventory" do
    @dealership.add_car(@car_1)
    @dealership.add_car(@car_2)
    @dealership.add_car(@car_3)
    @dealership.add_car(@car_4)

    expect(@dealership.total_value).to eq 156000
  end

  it "can list details about the dealership" do
    @dealership.add_car(@car_1)
    @dealership.add_car(@car_2)
    @dealership.add_car(@car_3)
    @dealership.add_car(@car_4)

    expect(@dealership.details).to eq({"total_value" => 156000, "address" => "123 Main Street"})
  end

  it "can tell you the average price of a car" do
    @dealership.add_car(@car_1)
    @dealership.add_car(@car_2)
    @dealership.add_car(@car_3)
    @dealership.add_car(@car_4)

    expect(@dealership.average_price_of_car).to eq("39,000")
  end

  it "can sort cars in inventory by price" do
    @dealership.add_car(@car_1)
    @dealership.add_car(@car_2)
    @dealership.add_car(@car_3)
    @dealership.add_car(@car_4)

    expect(@dealership.cars_sorted_by_price).to eq([@car_3, @car_4, @car_2, @car_1])
  end

  it "can show the inventory as a hash" do
    @dealership.add_car(@car_1)
    @dealership.add_car(@car_2)
    @dealership.add_car(@car_3)
    @dealership.add_car(@car_4)

    expect(@dealership.inventory_hash).to eq({"Ford"      => [@car_1],
                                              "Toyota"    => [@car_2, @car_3],
                                              "Chevrolet" => [@car_4]})
  end

end
