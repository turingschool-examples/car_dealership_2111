class Car
  attr_reader :name, :monthly_payment, :loan_length

  def initialize(name, payment, loan_length)
    @name = name,
    @payment = payment,
    @loan_length = loan_length
  end

  def make
    make_temp = []
    make = name[0].split(" ")
    make.first
  end
end
