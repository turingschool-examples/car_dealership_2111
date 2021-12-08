class Car
  attr_reader :make, :model, :monthly_payment, :loan_length

  def initialize(make_and_model, _monthly_payment, _loan_length)
    @make = make_and_model.split[0]
    @model = make_and_model.split[1]
  end
end
