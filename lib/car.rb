class Car
  attr_accessor :make_model, :monthly_payment, :loan_length, :color

  def initialize(make_model, monthly_payment, loan_length)
    @make_model = make_model
    @monthly_payment = monthly_payment
    @loan_length = loan_length
    @make_model = make_model
    @color
  end

  def make
    make = []
    make = @make_model.split(" ")
    make[0]
  end

  def model
    model = []
    model = @make_model.split(" ")
    model[1]
  end

  def total_cost
    @monthly_payment * @loan_length
  end

  def paint!(color)
    @color = color
  end
end
