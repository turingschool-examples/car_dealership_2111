require './lib/car'
require './lib/dealership'


describe Dealership do
   it 'exists' do
     dealership = Dealership.new("Acme Auto", "123 Main Street")
     expect(dealership).to be_a Dealership
   end

   it 'shows class inventory' do
     dealership = Dealership.new("Acme Auto", "123 Main Street")
        expect(dealership.inventory).to eq []
   end

   it 'shows class inventory count' do
     dealership = Dealership.new("Acme Auto", "123 Main Street")
     expect(dealership.inventory_count).to eq(0)
   end

   it '#add_car adds cars to inventory' do
     dealership = Dealership.new("Acme Auto", "123 Main Street")
     car_1 = Car.new("Ford Mustang", 1500, 36)
     car_2 = Car.new("Toyota Prius", 1000, 48)
     dealership.add_car(car_1)
     dealership.add_car(car_2)
     expect(dealership.inventory).to eq([car_1,car_2])
   end

   it '#add_car adds cars to inventory' do
     dealership = Dealership.new("Acme Auto", "123 Main Street")
     car_1 = Car.new("Ford Mustang", 1500, 36)
     car_2 = Car.new("Toyota Prius", 1000, 48)
     dealership.add_car(car_1)
     dealership.add_car(car_2)
     expect(dealership.inventory_count).to eq(2)
   end

   it 'show has_inventory returns false if empty' do
     dealership = Dealership.new("Acme Auto", "123 Main Street")
     expect(dealership.has_inventory?).to eq(false)
   end

   it '#cars_by_make returns of cars by make' do
     dealership = Dealership.new("Acme Auto", "123 Main Street")
     car_1 = Car.new("Ford Mustang", 1500, 36)
     car_2 = Car.new("Toyota Prius", 1000, 48)
     car_3 = Car.new("Toyota Tercel", 500, 48)
     car_4 = Car.new("Chevrolet Bronco", 1250, 24)
     dealership.add_car(car_1)
     dealership.add_car(car_2)
     dealership.add_car(car_3)
     dealership.add_car(car_4)
     expect(dealership.cars_by_make("Toyota")).to eq([car_2,car_3])
     expect(dealership.cars_by_make("Ford")).to eq([car_1])
   end

   it '#total_value returns total value of inventory' do
     dealership = Dealership.new("Acme Auto", "123 Main Street")
     car_1 = Car.new("Ford Mustang", 1500, 36)
     car_2 = Car.new("Toyota Prius", 1000, 48)
     car_3 = Car.new("Toyota Tercel", 500, 48)
     car_4 = Car.new("Chevrolet Bronco", 1250, 24)
     dealership.add_car(car_1)
     dealership.add_car(car_2)
     dealership.add_car(car_3)
     dealership.add_car(car_4)
     expect(dealership.total_value).to eq(156000)
   end

   it '#details returns a hash with total value and name' do
     dealership = Dealership.new("Acme Auto", "123 Main Street")
     car_1 = Car.new("Ford Mustang", 1500, 36)
     car_2 = Car.new("Toyota Prius", 1000, 48)
     car_3 = Car.new("Toyota Tercel", 500, 48)
     car_4 = Car.new("Chevrolet Bronco", 1250, 24)
     dealership.add_car(car_1)
     dealership.add_car(car_2)
     dealership.add_car(car_3)
     dealership.add_car(car_4)
     expect(dealership.details).to eq ({"total_value" => 156000,"address" => "123 Main Street"})
   end

   it '#average_price_of_car returns the average price of car' do
     dealership = Dealership.new("Acme Auto", "123 Main Street")
     car_1 = Car.new("Ford Mustang", 1500, 36)
     car_2 = Car.new("Toyota Prius", 1000, 48)
     car_3 = Car.new("Toyota Tercel", 500, 48)
     car_4 = Car.new("Chevrolet Bronco", 1250, 24)
     dealership.add_car(car_1)
     dealership.add_car(car_2)
     dealership.add_car(car_3)
     dealership.add_car(car_4)
     expect(dealership.average_price_of_car).to eq ("39,000")
   end
end
