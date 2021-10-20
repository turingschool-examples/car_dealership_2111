#
#
#

class Car

  attr_reader :make, :model, :monthly_payment, :loan_length, :total_cost, :color

  def initialize(make_model, monthly_payment, loan_length, color = nil)
    @make_model_iv = make_model.split
    @make = @make_model_iv.first
    @model = @make_model_iv.last
    @monthly_payment = monthly_payment
    @loan_length = loan_length
    @total_cost = @monthly_payment * @loan_length
    @color = color
  end

  def paint(car_color)
    @color = car_color
  end

end
