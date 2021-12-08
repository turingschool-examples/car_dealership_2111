class Car
  attr_reader :make, :model, :monthly_payment, :loan_length, :total_cost
  def initialize(make, model, monthly_payment, loan_length)
    @make            = make
    @model           = model
    @monthly_payment = monthly_payment
    @loan_length     = loan_length
    # @total_cost      = []
  end

  def total_cost(cost)
    @total_cost      = []
    # @total_cost.push(cost)
    @total_cost << cost
  end
  @total_cost


  def color
  end

  def paint!()
  end
end
