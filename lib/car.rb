require 'pry'

class Car
  attr_reader :car, :monthly_payment, :loan_length, :model, :make

  def initialize(car, monthly_payment, loan_length)
    @car = car
    @monthly_payment =  monthly_payment
    @loan_length = loan_length
    @make, @model = @car.split(" ")
  end

  def total_cost
    @monthly_payment * loan_length
  end
end
