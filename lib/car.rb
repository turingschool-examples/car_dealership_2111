class Car

  attr_reader :make_model, :monthly_payment, :loan_length #:color

  def initialize(make_model, monthly_payment, loan_length)
    @make_model = make_model
    @monthly_payment = monthly_payment
    @loan_length = loan_length
    # @color = color
  end

  def make
    strings = @make_model.split(' ')
    strings[0]
  end

  def model
    strings = @make_model.split(' ')
    strings[1]
  end

  def total_cost
    total_cost = loan_length * monthly_payment
    total_cost
  end

  # def paint!(input)
  #   paint = input.to_sym
  #   color << paint
  #   color
  # end

end
