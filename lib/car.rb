class Car
  attr_reader :make, :model
  def initialize(make_model, monthly_payment, loan_length)
    @make = make
    @model = model
    @monthly_payment = monthly_payment
    @loan_length = loan_length
  end

end
