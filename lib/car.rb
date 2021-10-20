class Car
  attr_reader :name,
              :monthly_payment,
              :loan_length,
              :color

  def initialize(name, monthly_payment, loan_length)
    @name = name
    @monthly_payment = monthly_payment
    @loan_length = loan_length
    @color = nil
  end

  def make
    @name.split[0]
  end

  def model
    @name.split[1]
  end

  def total_cost
    @monthly_payment * @loan_length
  end

  def paint!(color_symbol)
      @color = color_symbol
  end
end
