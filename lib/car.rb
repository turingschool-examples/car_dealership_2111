class Car
  attr_reader :make_and_model, :monthly_payment, :loan_length
  def initialize (make_and_model, monthly_payment, loan_length)
    @make_and_model = make_and_model
    @monthly_payment = monthly_payment
    @loan_length = loan_length
    @color = nil

  end

  def make
    make_and_model.split.first
  end

  def model
    make_and_model.split.last
  end

  def total_cost
    monthly_payment * loan_length
  end

  def color
    @color
  end

  def paint!(paint_color)
    @color = paint_color
    p @color
  end
end
