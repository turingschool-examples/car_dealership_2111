class Car
  attr_reader :make, :model, :monthly_payment, :loan_length

  def initialize(car, monthly_payment, loan_length)
    @make = car.split(" ").first
    @monthly_payment = monthly_payment
    @loan_length = loan_length
  end
end
