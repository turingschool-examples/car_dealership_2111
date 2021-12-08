class Car
  attr_reader :name,
              :monthly_payment,
              :loan_length,
              :make

  def initialize(name, monthly_payment, loan_length)
    @name = name
    @monthly_payment = monthly_payment
    @loan_length = loan_length
  end

  def make
    @name = name.split.first
  end

  def model
    @name = name.split.last
  end

  def total_cost
    monthly_payment * loan_length
  end

  def color
    @color
  end

  def paint!(color)
    @color = color
  end
end
