class Car
  attr_reader :name,
              :monthly_payment,
              :loan_length,
              :make,
              :model,
              :total_cost,
              :color

  def initialize(name, monthly_payment, loan_length) #can i split name into make/model here?
    @name            = name
    @monthly_payment = monthly_payment
    @loan_length     = loan_length
    @make            = make
    @model           = model
    @total_cost      = total_cost
    @color          = :color
  end

  def make
    @make = @name.split.first
  end

  def model
    @model = @name.split.last
  end

  def total_cost
    @total_cost = monthly_payment * loan_length
  end

  def paint!(paint)
    @color = paint
  end

end
