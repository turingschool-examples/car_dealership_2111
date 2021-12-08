class Car
  attr_reader :name, :monthly_payment, :loan_length

  def initialize(name, monthly_payment, loan_length)
    @name = name
    @monthly_payment = monthly_payment
    @loan_length = loan_length
  end

  def make
    @name = @name.split(" ")
    return @name[0]
  end

  def model
    @name = @name.split(" ")
    return @name[1]
  end

end
