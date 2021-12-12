class Car
  attr_reader :make_model, :monthly_payment, :loan_length, :color
  def initialize(make_model, monthly_payment, loan_length)
    @make_model = make_model.split(" ")
    @monthly_payment = monthly_payment
    @loan_length = loan_length
    @color = nil
  end

  def total_cost
    @monthly_payment * @loan_length
  end

  def make
    @make_model[0]
  end

  def model
    @make_model[1]
  end

  def paint!(color)
    @color = color
  end
end
