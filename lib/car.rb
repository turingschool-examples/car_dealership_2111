class Car
  attr_reader :car, :monthly_payment, :loan_length

  def initialize(car, monthly_payment, loan_length)
    @car = car
    @monthly_payment = monthly_payment
    @loan_length = loan_length
    @make = []
    @model = []
  end

  def make
    @make << @car.split(' ').first
    return @make[0]
  end

  def model
    @model << @car.split(' ').last
    return @model[0]
  end

  def total_cost
    loan_length * monthly_payment
  end

end
