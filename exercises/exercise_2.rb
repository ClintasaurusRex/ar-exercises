require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

# store = Store.find_by(id: 1) can be done this way
@store1 = Store.find(1) # Find store by id put into and instance
puts "store 1 is #{@store1.name}"

@store2 = Store.find(2) # Same with store 2
puts "Store 2 is #{@store2.name}"

@store1.update(name: "Burningby")# Update the store name
puts "New title: #{@store1.name}"
