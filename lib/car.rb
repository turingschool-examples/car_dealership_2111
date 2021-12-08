class Car
  attr_accessor :name, :monthly_payment, :loan_length, :make, :model, :color, :total_cost_of_car
  def initialize(name, monthly_payment, loan_length)
    @name = name
    @monthly_payment = monthly_payment
    @loan_length = loan_length
    @make = @name.split(' ').first
    @model = @name.split(' ').last
    @color = nil
    @total_cost_of_car
  end

  def total_cost
    @total_cost_of_car = @monthly_payment * @loan_length
  end

  def paint!(color)
    @color = color.to_sym
  end

end
