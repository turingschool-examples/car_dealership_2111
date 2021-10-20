class Car
  attr_accessor :monthly_payment, :loan_length, :make, :make_then_model, :model, :color
  def initialize(make_then_model, monthly_payment, loan_length)
    @make_then_model = make_then_model
    @monthly_payment = monthly_payment
    @loan_length = loan_length
    @make = make_then_model.split[0]
    @model = make_then_model.split[1]
    @color = nil
  end

  def total_cost
    loan_length * monthly_payment
  end

  def paint!(color)
    @color = color
  end
end
