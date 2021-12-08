class Car
  attr_reader :make, :model, :monthly_payment, :loan_length, :color

  def initialize(make_model, payment, loan_length)
    @make = make_model.split(" ")[0]
    @model = make_model.split(" ")[1]
    @monthly_payment = payment
    @loan_length = loan_length
  end

  def total_cost
    @loan_length * @monthly_payment
  end

  def paint!(color)
    @color = color
  end
end
