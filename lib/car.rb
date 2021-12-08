require 'pry'
class Car
  attr_reader :make, :model, :monthly_payment, :loan_length, :color
  def initialize(make_model, monthly_payment, loan_length)
    @make_model = make_model
    @monthly_payment = monthly_payment
    @loan_length = loan_length
    @color = color
  end

  def make
    make = @make_model.split()
    return make.first
  end

  def model
    model = @make_model.split()
    return model.last
  end

  def total_cost
    monthly_payment * loan_length
  end

  def paint!(color)
    @color = color
  end

end
