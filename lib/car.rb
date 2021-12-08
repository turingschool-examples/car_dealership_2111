class Car
  attr_reader :vehicle, :monthly_payment
  def initialize(vehicle, cost, months)
  @vehicle = vehicle
  @monthly_payment = cost
  @months = months
  end

  def make
    @vehicle.split(" ").first
  end

  def model
    @vehicle.split(" ").last
  end

end
