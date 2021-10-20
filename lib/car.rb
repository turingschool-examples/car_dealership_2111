class Car
  attr_reader :make_and_model, :monthly_payment, :loan_length, :color
  def initialize (make_and_model, monthly_payment, loan_length)
    @make_and_model = make_and_model
    @monthly_payment = monthly_payment
    @loan_length = loan_length
    @color = color
  end

  def make
    make = make_and_model.split
    make[0]
  end

  def model
    model = make_and_model.split
    model[1]
  end

  def total_cost
    @monthly_payment * @loan_length
  end

  def paint!(new_color)
    @color = new_color
  end
end
