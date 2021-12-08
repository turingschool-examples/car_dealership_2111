require 'rspec'
require './lib/car'

class Car
  attr_reader :make_and_model,
              :monthly_payment,
              :loan_length,
              :color
  def initialize(make_and_model, monthly_payment, loan_length)
    @make_and_model = make_and_model
    @monthly_payment = monthly_payment
    @loan_length = loan_length
    @color = nil
  end

  def make
    make_and_model_split = make_and_model.split()
    make = make_and_model_split[0]

  end

  def model
    make_and_model_split = make_and_model.split()
    model = make_and_model_split[1]

  end

end
