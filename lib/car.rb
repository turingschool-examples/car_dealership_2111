class Car

  def initialize(make, monthly_payment, loan_length)
    @make = make
    @monthly_payment = monthly_payment
    @loan_length = loan_length
  end

  def make
    @make = "Ford"
  end

  def model
    @model = "Mustang"
  end

  def monthly_payment
    @monthly_payment = 1500
  end

  def loan_length
    @loan_length = 36
  end

  def total_cost
    @loan_length.to_f * @monthly_payment.to_f
  end

  def color

  end

  def paint!
    color.add(paint!)
  end
end
