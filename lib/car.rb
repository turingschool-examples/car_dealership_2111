class Car
  attr_reader :makemodel, :make, :model, :monthly_payment, :loan_length, :color

  def initialize(makemodel, monthly_payment, loan_length)
    @makemodel = makemodel.split
    @make = @makemodel[0]
    @model = @makemodel[1]
    @monthly_payment = monthly_payment
    @loan_length = loan_length
    @color = paint!(:color)
  end

  def total_cost
    @monthly_payment * @loan_length
  end

  def paint!(color)
    @color = color
  end
end
