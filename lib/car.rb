class Car
  attr_reader :name, :monthly_payment, :loan_length

  def initialize(name, payment, loan_length)
    @name = name,
    @monthly_payment = payment,
    @loan_length = loan_length
  end

  def make
    make = name[0].split(" ")
    make.first
  end

  def model
    model = name[0].split(" ")
    model.last
  end

  def total_cost
    total = monthly_payment * loan_length
  end
end
