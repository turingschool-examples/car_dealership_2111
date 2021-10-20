class Car
  attr_reader :make, :monthly_payment, :loan_length
  def initialize(make_n_model, payment, loan_length)
    @make = make_n_model
    @monthly_payment = payment
    @loan_length = loan_length

  end

  def make
    @make.delete(" Mustang")
  end

  def model
    @make.delete("Ford ")
  end

  def monthly_payment
    @monthly_payment
  end

  def loan_length
    @loan_length
  end

  def total_cost
    monthly_payment * loan_length
  end

  def color

  end

  # def paint!
  #   @color
  # end
end
