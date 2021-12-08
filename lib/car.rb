class Car
  attr_reader :make, :model

  def initialize(type, monthly_payment, loan_length)
    @make = type.split.first
    @payments = monthly_payment
    @loan = loan_length
    #require 'pry'; binding.pry

  end




end
