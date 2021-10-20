class Car
  attr_reader :make, :model, :monthly_payment, :loan_length, :color
  def initialize(make, model, monthly_payment, loan_length)
    @make = make
    @model = model
    @monthly_payment = monthly_payment
    @loan_length = loan_length
    @color = nil
  end

  def total_cost
    @monthly_payment * @loan_length
  end

  def paint!(new_color)
    @color = new_color
  end

end
