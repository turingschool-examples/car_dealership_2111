class Car

  attr_reader :make,
              :model,
              :monthly_payment,
              :loan_length,
              :color

  def initialize(make_model, month_pay, loan_length)
    @array = make_model.split(" ")
    @make = @array[0]
    @model = @array[1]
    @monthly_payment = month_pay
    @loan_length = loan_length
    @color = nil
  end

  def total_cost
    @monthly_payment * @loan_length
  end
end
