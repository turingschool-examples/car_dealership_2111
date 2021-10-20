class Car
  attr_reader :make,
              :model,
              :monthly_payment,
              :loan_length,
              :color
  def initialize(make, monthly_payment, loan_length)
    # require "pry"; binding.pry
    @make = make.split.first
    @model = make.split.last
    @monthly_payment = monthly_payment
    @loan_length = loan_length
    @color = color
  end

  def total_cost
    @monthly_payment * @loan_length
  end

  def paint!(new_color)
    @color = new_color
  end
end
