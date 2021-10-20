class Car
  attr_accessor :make_model, :monthly_payment, :loan_length

  def initialize(make_model, monthly_payment, loan_length)
    @make_model = make_model
    @monthly_payment = monthly_payment
    @loan_length = loan_length
    @make_model = make_model
    # @make = []
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


end
