require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Whistler", annual_revenue:1900000, mens_apparel: true, womens_apparel: true)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

store_count = Store.count
puts "Total stores: #{store_count}"

@mens_stores = Store.where(mens_apparel: true)
@mens_stores.each do |store| # loop to find the stores with menswear
  puts "Stores with menswear: #{store.name}"
end

@womens_store = Store.where("womens_apparel = ? AND annual_revenue < ?", true, 1000000) # does it have womans_apparel ? AND does it have annual_revenue < ?
# the it reads the condition left to right compaing if the first statement is true and if the second is less than  a milly


@womens_store.each do |store|
  puts "Stores with womanswear and low revenue: #{store.name}"
end