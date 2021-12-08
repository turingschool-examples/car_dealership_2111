class Car

  attr_reader :make,
              :model,
              :monthly_payment,
              :loan_length

  def initialize(car, monthly_payment, loan_length)
    @make = car.split[0]
    @model = car.split[1]
    @monthly_payment = monthly_payment
    @loan_length = loan_length
  end

  def total_cost
    @monthly_payment * @loan_length
  end
end
