class Car
  attr_reader :vehicle
  def initialize(vehicle, price, months)
  @vehicle = vehicle
  @price = price
  @months = months
  end

  def make
    @vehicle.split(" ").first
  end

  def model
    @vehicle.split(" ").last
  end
end
