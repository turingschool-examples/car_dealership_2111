class Car
  attr_reader :make,
              :model,
              :monthly_payment,
              :loan_length,
              :color

  def initialize(type, monthly_payment, loan_length)
    @make            = type.split(" ").first
    @model           = type.split(" ").last
    @monthly_payment = monthly_payment
    @loan_length     = loan_length
    @color           = nil
  end

  def total_cost
    @monthly_payment * @loan_length
  end

  def paint!(new_color)
    @color = new_color
  end
end
