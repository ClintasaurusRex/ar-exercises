require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@total_sum = Store.sum(:annual_revenue) # this will query and calculate the total revenue of all the stores combined
puts "The total sum between stores is: #{@total_sum}"

@avg_revenue = Store.average(:annual_revenue)
puts "The average store revenue is: #{@avg_revenue.to_i}"

@high_revenue = Store.where('annual_revenue >= ?', 1000000).count
puts "The stores that generate over a milly and #{@high_revenue}"