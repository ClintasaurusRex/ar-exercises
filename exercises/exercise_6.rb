require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store < ActiveRecord::Base
  has_many :employees
end

class Employee < ActiveRecord::Base
  belongs_to :store
end

# employees created for store Burnaby
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "John", last_name: "Wick", hourly_rate: "Gold coins")
@store1.employees.create(first_name: "Sterling", last_name: "Archer", hourly_rate: 60)

# employees created for store Richmond
@store2.employees.create(first_name: "Fox", last_name: "Mulder", hourly_rate: 60)
@store2.employees.create(first_name: "Ash", last_name: "Williams", hourly_rate: 10)
@store2.employees.create(first_name: "Joe", last_name: "Pesci", hourly_rate:160)


@employee1 = @store1.employees
@employee2 = @store2.employees

puts "Employees at #{@store1.name}:"
@store1.employees.each do |employee|
  puts "---#{employee.first_name} #{employee.last_name}
  Hourly:$ #{employee.hourly_rate}"
end

puts "Employees at #{@store2.name}:"
@store2.employees.each do |employee|
  puts "---#{employee.first_name} #{employee.last_name}
   Hourly: $ #{employee.hourly_rate}"
end



# ActiveRecord::Base is the main class provided by the Active Record framework in Ruby on Rails. It's a fundamental part of the Object-Relational Mapping (ORM) system.

# When a model class inherits from ActiveRecord::Base, it gains a wealth of functionality:

# It automatically connects the class to the corresponding database table.

# It provides methods for database operations like create, read, update, and delete (CRUD).

# It allows you to define associations between models (like has_many, belongs_to).

# It provides a query interface for retrieving data from the database.

# It handles data validation and callbacks.

# By inheriting from ActiveRecord::Base, your model becomes an Active Record model, giving it the ability to interact with the database in an object-oriented manner. This abstraction allows you to work with database records as Ruby objects, making database operations more intuitive and Ruby-like