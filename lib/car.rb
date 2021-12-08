class Car
  attr_reader :make, :model, :monthly_payment,
              :loan_length, :total_cost, :color

  def initialize(car, monthly_payment, loan_length)
    @make = car.split(" ").first
    @model = car.split(" ").last
    @monthly_payment = monthly_payment
    @loan_length = loan_length
    @total_cost = @monthly_payment * @loan_length
    @color = nil
  end

  def paint!(color)
    @color = color
  end
end
