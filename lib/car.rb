class Car
  attr_reader :vehicle, :monthly_payment, :loan_length, :total_cost
  def initialize(vehicle, cost, months)
  @vehicle = vehicle
  @monthly_payment = cost
  @loan_length = months
  @total_cost = cost * months
  end

  def make
    @vehicle.split(" ").first
  end

  def model
    @vehicle.split(" ").last
  end


end
