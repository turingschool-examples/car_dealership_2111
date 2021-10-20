require 'rspec'
require './lib/car'

RSpec.describe Car do
  let(:car) {Car.new("Ford Mustang", 1500, 36)}

  # Test initialization of the Car class
  describe '#initialize' do
     it 'exists' do
      expect(car).to be_a Car
    end

    it 'has a make' do
      expect(car.make).to eq("Ford")
    end

    it 'has a model' do
      expect(car.model).to eq("Mustang")
    end

    it 'has a monthly payment' do
      expect(car.monthly_payment).to eq(1500)
    end

    it 'has a loan length' do
      expect(car.loan_length).to eq(36)
    end

    it 'has a total cost' do
      expect(car.total_cost).to eq(54000)
    end
  end

  # Test Car#paint! method. 
  describe '#paint!' do
    it 'can change color' do
      car.paint!(:blue)
      expect(car.color).to eq(:blue)
    end
    
    it 'can change the color again' do
      car.paint!(:blue)
      expect(car.color).to eq(:blue)
      car.paint!(:green)
      expect(car.color).to eq(:green)
    end
  end
end
