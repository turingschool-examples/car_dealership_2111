class Car
  attr_reader :make,
              :model,
              :monthly_payment,
              :loan_length

  def initialize(make_and_model, monthly_payment, loan_length)
    @make = make_and_model.split(' ')[0]
    @model = make_and_model.split(' ')[1]
    @monthly_payment = monthly_payment
    @loan_length = loan_length
  end

  def total_cost
    @monthly_payment * @loan_length
  end
end
