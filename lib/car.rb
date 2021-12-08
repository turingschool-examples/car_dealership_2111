class Car
  attr_reader :make_model, :monthly_payment, :loan_length

  def initialize(make_model, monthly_payment, loan_length)
    @make_model = make_model
    @monthly_payment = monthly_payment
    @loan_length = loan_length
  end

  def make
    make_model.split(" ")
    car_make = make_model.split[0]
    p car_make

  end

  def model
    make_model.split(" ")
    car_model = make_model.split[1]
    p car_model
  end

  def total_cost
    return @monthly_payment * @loan_length
  end

end
