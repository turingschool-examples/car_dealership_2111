class Car
  attr_reader :make, :model, :monthly_payment, :loan_length, :color
  def initialize(name, monthly_payment, loan_length)
    @name = name
    @monthly_payment = monthly_payment
    @loan_length = loan_length
    @color

    split = name.split(' ')
    @make = split.first
    @model = split.last

  end

  def total_cost
    @monthly_payment * @loan_length
  end

end
