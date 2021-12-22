class Car
  attr_reader :make, :model, :monthly_payment, :loan_length, :total_cost, :color

  def initialize(make_n_model, monthly_payment, loan_length)
    @make = make_n_model.split[0]
    @model = make_n_model.split[1]
    @monthly_payment = monthly_payment
    @loan_length = loan_length
    @total_cost = loan_length * monthly_payment
    @color = color
  end

  def paint!(new_color)
    @color = new_color
  end
end
