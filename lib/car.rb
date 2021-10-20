class Car
  attr_reader :make, :model, :monthly_payment, :loan_length, :total_cost, :color

  def initialize(make_model, monthly_payment, loan_length)
    @make = make_model.split(" ")[0]
    @model = make_model.split(" ")[1]
    @monthly_payment = monthly_payment
    @loan_length = loan_length
    @total_cost = @monthly_payment * @loan_length
    @color = nil
  end

  def paint(color)
    @color = color
  end
end
