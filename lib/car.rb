class Car
  attr_reader :make, :model, :monthly_payment, :loan_length

  def initialize(type, monthly_payment, loan_length)
    @type = type
    @make = @type.split(" ").first
    @model = @type.split(" ").last
    @monthly_payment = monthly_payment
    @loan_length = loan_length
  end

  def total_cost
    @monthly_payment * @loan_length
  end



end
