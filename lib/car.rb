class Car
  attr_reader :make, :model, :monthly_payment, :loan_length, :color

  def initialize(make_model, monthly_payment, loan_length)
    @make = make_model.split[0]
    @model = make_model.split[1]
    @monthly_payment = monthly_payment
    @loan_length = loan_length
  end

  def total_cost
    monthly_payment * loan_length
  end

  def paint!(color)
    @color = color
  end
end
