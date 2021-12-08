class Car
  attr_accessor :name, :model, :monthly_payment
  def initialize(name, model, monthly_payment)
    @name = name
    @model = model
    @monthly_payment = monthly_payment
  end 
end
