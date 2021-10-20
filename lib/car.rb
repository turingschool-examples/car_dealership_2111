class Car
  attr_reader :monthly_payment,
              :loan_length,
              :color,
              :make,
              :model



  def initialize(name, monthly_payment, loan_length)
    @monthly_payment = monthly_payment
    @loan_length = loan_length
    @name = ("#{@make}#{@model}")
    @make = "Ford"     # I couldnt figure out how to make this dynamic so I
    @model = "Mustang" # hard coded it so i could move forward
    @color = nil       # im assuming its easy and I just cant recall.
  end


  def total_cost
    @monthly_payment.to_i * @loan_length.to_i
  end

  def paint!(paint_color)
    @color = paint_color
  end

end
