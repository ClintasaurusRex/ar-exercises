require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

# store = Store.find_by(id: 1) can be done this way
@store1 = Store.find(1)
puts "store 1 is #{@store1.name}"

@store2 = Store.find(2)
puts "Store 2 is #{@store2.name}"

@store1.update(name: "Burningby")
puts "New title: #{@store1.name}"
