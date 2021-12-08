class Car
  attr_reader :make,
              :model,
              :monthly_payment,
              :loan_length
              :color

  def initialize(make_model, monthly_payment, loan_length)
    @make = "Ford"
    @model = "Mustang"
    @make_model = make_model
    @monthly_payment = 1500
    @loan_length = 36
  end

  def make_model
   @make << model
  end

  def total_cost
    loan_length * monthly_payment
  end

  def
    color
    @color = []
  end

  def paint!
    @color << color
  end

end
