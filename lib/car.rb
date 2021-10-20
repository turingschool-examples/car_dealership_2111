class Car
  attr_reader :monthly_payment, :loan_length
  attr_accessor :color

  def initialize (make_model, monthly_payment, loan_length)
    @make_model = make_model
    @monthly_payment = monthly_payment
    @loan_length = loan_length
    @color = nil
  end

  def make
    @make_model.split.first
  end

  def model
    @make_model.split.last
  end

  def total_cost
    @loan_length * @monthly_payment
  end

  def paint!(paint)
    @color = paint
  end
  
end
