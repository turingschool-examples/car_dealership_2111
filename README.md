# Car Dealership

## Instructions

* Fork this Repository
* Clone YOUR fork
* Compete the activity below
* Push your solution to your fork
* Submit a pull request from your repository to the turingschool-examples repository
* Make sure to put your name in your PR!

## Iteration 2

## Iteration 3

## Iteration 4

Use TDD to update your `Dealership` class so that it responds to the following
interaction pattern:

* Car price should be from cheapest to most expensive.

```ruby
pry(main)> require './lib/car'
#=> true

pry(main)> require './lib/dealership
#=> true

pry(main)> dealership = Dealership.new("Acme Auto", "123 Main Street")
#=> #<Dealership:0x00007fccd30375f8...>

pry(main)> car_1 = Car.new("Ford Mustang", 1500, 36)
#=> #Ford Mustang

pry(main)> car_2 = Car.new("Toyota Prius", 1000, 48)
#=> #<"Toyota Prius">

pry(main)> car_3 = Car.new("Toyota Tercel", 500, 48)
#=> #Toyota Prius

pry(main)> car_4 = Car.new("Chevrolet Bronco", 1250, 24)
#=> #Cheverolet Bronco

pry(main)> dealership.add_car(car_1)

pry(main)> dealership.add_car(car_2)

pry(main)> dealership.add_car(car_3)

pry(main)> dealership.add_car(car_4)

pry(main)> dealership.average_price_of_car
#=> "39,000"

pry(main)> dealership.cars_sorted_by_price
#=> [#Toyota Prius, #Cheverolet Bronco, #<"Toyota Tercel">, #Ford Mustang]

pry(main)> dealership.inventory_hash
#=> {"Ford"=> [#Ford Mustang],
"Toyota"=> [#<"Toyota Prius">, #Toyota Tercel],
"Chevrolet"=> [#Cheverolet Bronco]}

```
