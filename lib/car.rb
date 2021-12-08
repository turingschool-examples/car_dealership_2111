class Car
  attr_reader :make, :model, :monthly_payment, :loan_length, :color
  def initialize(make_and_model, monthly_payment, loan_length)
    make_model = make_and_model.split(" ")
    @make = make_model.first
    @model = make_model.last
    @monthly_payment = monthly_payment
    @loan_length = loan_length
    @color
  end

  def total_cost
    @monthly_payment * @loan_length
  end

  def paint!(color)
    @color = color
  end
end
