def Car
  attr_accessor :make_and_model, :monthly_payment, :loan_length

  def initialize(make_and_model, monthly_payment, loan_length)
    @make_and_model = make_and_model
    @monthly_payment = monthly_payment
    @loan_length = loan_length
  end

  def make
    @make
  end

  def model
    @model
  end

  def make_and_model
    @make
    @model
  end
end
