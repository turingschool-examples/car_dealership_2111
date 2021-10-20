class Car
  attr_reader :make,
              :model,
              :monthly_payment,
              :loan_length

  def initialize(type, monthly_payment, loan_length)
    @make            = type.slice(0..3)
    @model           = type.slice(5..11)
    @monthly_payment = monthly_payment
    @loan_length     = loan_length
  end

  def total_cost
    @monthly_payment * @loan_length
  end
end
