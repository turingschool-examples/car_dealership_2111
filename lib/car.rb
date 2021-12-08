class Car
  attr_reader :make, :monthly_payment, :loan_length

  def initialize(make_model, monthly_payment, loan_length)
    make_model = make_model.split(' ')
    @make = make_model.first
    @model = make_model.last
    @monthly_payment = monthly_payment
    @loan_length = loan_length
  end
end
