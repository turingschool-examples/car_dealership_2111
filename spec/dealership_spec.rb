require './lib/car'
require './lib/dealership'


RSpec.describe Car do
  context 'Iteration II' do
    let (:dealership) {Dealership.new("Acme Auto", "123 Main Street")}
    let (:car_1) {Car.new("Ford Mustang", 1500, 36)}
    let (:car_2) {Car.new("Toyota Prius", 1000, 48)}


    it 'it exists' do


      expect(dealership).to be_a Dealership
    end

    it 'has attributes' do

      expect(dealership.inventory).to eq([])
      expect(dealership.inventory_count).to eq(0)
    end




    it 'can add cars' do
      dealership.add_car(car_1)
      dealership.add_car(car_2)

      expect(dealership.inventory).to eq([car_1, car_2])
      expect(dealership.inventory_count).to eq(2)
    end
  end



  context 'Iteration III' do
       let (:dealership) {Dealership.new("Acme Auto", "123 Main Street")}
       let (:car_1) {Car.new("Ford Mustang", 1500, 36)}
       let (:car_2) {Car.new("Toyota Prius", 1000, 48)}
       let (:car_3) {Car.new("Toyota Tercel", 500, 48)}
       let (:car_4) {Car.new("Chevrolet Bronco", 1250, 24)}


    it 'can get all cars by make' do

      expect(dealership.cars_by_make("Toyota")).to eq([car_2, car_3])
      expect(dealership.cars_by_make("Ford")).to eq([car_1])
    end
  end
end
