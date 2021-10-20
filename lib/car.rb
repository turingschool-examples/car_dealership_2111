class Car

  def initialize(name, payment, loan_length)
    @holder = name.split # Holds our name input, splits each word into array
    @payment = payment
    @loan_length = loan_length
    @make = @holder[0] # Make is first element in holder array
    @model = @holder[1] # Model is second element in holder array
    @color = nil
  end

  def make # Return @make value
    @make
  end

  def model # Return @model value
    @model
  end

  def monthly_payment # Return @payment value
    @payment
  end

  def loan_length
    @loan_length
  end

  def total_cost
    @payment * @loan_length
  end

  def color
    @color
  end

  def paint!(color_arg)
    @color = color_arg
  end

end
