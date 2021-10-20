class Dealership
   attr_reader :dealership_name, :address

   def initialize(dealership_name, address)
     @dealership_name = dealership_name
     @address = address
  end
