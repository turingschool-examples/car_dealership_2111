class Car
  attr_reader :type,
              :monthly_payment,
              :loan_length,
              :color

  def initialize(type, monthly_payment, loan_length)
    @type = type
    @monthly_payment = monthly_payment
    @loan_length = loan_length
    @color = nil
  end

  def make
    make_split = @type.split(" ")
    return make_split[0]
  end

  def model
    make_split = @type.split(" ")
    return make_split[1]
  end

  def total_cost
    @monthly_payment * @loan_length
  end

  def paint!(color)
    @color = color
  end
end
