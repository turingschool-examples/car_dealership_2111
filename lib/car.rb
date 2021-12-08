class Car
  attr_reader :make, :model, :monthly_payment, :loan_length, :total_cost

  def initialize(make_and_model, monthly_payment, loan_length)
    @make = make_and_model.split[0]
    @model = make_and_model.split[1]
    @monthly_payment = monthly_payment
    @loan_length = loan_length
    @total_cost = loan_length * monthly_payment
  end
end
