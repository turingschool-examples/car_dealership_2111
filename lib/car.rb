#Loan length is in month, and the total cost is the loan length multiplied by the monthly payment.
class Car
  attr_accessor :make_model, :monthly_payment, :loan_length, :color

  def initialize(make_model,monthly_payment, loan_length)
    @make_model = make_model
    @monthly_payment = monthly_payment
    @loan_length = loan_length
    @color = nil
  end

  def make
    @make_model.split(' ')[0]
  end

  def model
    @make_model.split(' ')[1]
  end

  def total_cost
    @loan_length * @monthly_payment
  end

  def paint!(color)
    @color = color
  end

end
