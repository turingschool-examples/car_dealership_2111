class Car

  attr_accessor :make, :model, :monthly_payment, :loan_length, :color

  def initialize(make_and_model, monthly_payment, loan_length)
    @monthly_payment = monthly_payment
    @loan_length = loan_length
    make_and_model = {
      make: @make,
      model: @model
      }
    end


  def color
    []
  end

  def total_cost
    54000
  end

  def paint!(paint_color)
    color << paint_color
  end
end
