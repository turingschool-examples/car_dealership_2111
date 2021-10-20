class Car

  attr_reader :make_model, :monthly_payment, :loan_length, :color

  def initialize(make_model, monthly_payment, loan_length)
    @make_model = make_model
    @monthly_payment = monthly_payment
    @loan_length = loan_length
    @color = nil
  end


  def make
    make_model_split = make_model.split()
    make = make_model_split[0]
  end

  def model
    make_model_split = make_model.split()
    model = make_model_split[1]
  end

  def total_cost
    total_cost = @monthly_payment * @loan_length
  end

  def paint!(color)
    @color = color
  end

end
