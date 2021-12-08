class Car
  attr_reader :make, :model, :payments, :loan, :color

  def initialize(type, monthly_payment, loan_length)
    @make = type.split.first
    @payments = monthly_payment
    @loan = loan_length
    #require 'pry'; binding.pry
    @model = type.split[1]
    @color = nil
    #require 'pry'; binding.pry
  end

  def monthly_payment
    @payments
  end

  def loan_length
    @loan
  end

  def total_cost
    @loan * monthly_payment
  end
#require 'pry'; binding.pry
  def paint!(color)
      @color = color

  end






end
