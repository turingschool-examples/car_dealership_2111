class Car
  attr_reader :type, :monthly_payment, :loan_length

  def initialize(type, monthly_payment, loan_length)
    @type = type
    @monthly_payment = monthly_payment
    @loan_length = loan_length
  end

  def make
    make_and_model = @type.split(" ")
    make_and_model[0]
  end


end
