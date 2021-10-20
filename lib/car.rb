class Car
  attr_accessor :make_and_model, :monthly_payment, :loan_length

  def initialize(make_and_model, monthly_payment, loan_length)
    @make_and_model = make_and_model
    @monthly_payment = monthly_payment
    @loan_length = loan_length
  end

  def make
    @make_and_model.split.first
  end

  def model
    @make_and_model.split.last
  end

  def total_cost
    @monthly_payment * @loan_length
  end

end
