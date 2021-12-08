class Car
  attr_accessor :name, :monthly_payment, :loan_length, :make, :model
  def initialize(name, monthly_payment, loan_length)
    @name = name
    @monthly_payment = monthly_payment
    @loan_length = loan_length
    @make = @name.split(' ').first
    @model = @name.split(' ').last
  end

  def total_cost
    @monthly_payment * @loan_length
  end 

end
