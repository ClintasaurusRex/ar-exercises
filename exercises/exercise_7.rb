require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
class Employees < ActiveRecord::Base
  belongs_to :store

 validates :first_name, presence: true
 validates :last_name, presence: true
 validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
 validates :store, presence: true
end

class Store < ActiveRecord::Base
  belongs_to :Employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: {only_integer: true, greater_than_or_equal_to: 0 }
end

# These will fail
employee = Employees.new
puts "Is new employee valid? #{employee.valid?}"
puts "Validation errors:"
puts employee.errors.full_messages

# Test each validation
employee.first_name = "John"
employee.last_name = "Doe"
employee.hourly_rate = 50
employee.store = Store.first

# These will pass
puts "\nAfter setting attributes:"
puts "Is employee valid now? #{employee.valid?}"
if employee.valid?
  puts "Employee is valid!"
else
  puts "Validation errors:"
  puts employee.errors.full_messages
end