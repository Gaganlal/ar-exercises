require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

pp "this is total sum of revenue: #{Store.sum(:annual_revenue)}"
pp "this is average revenue: #{Store.average(:annual_revenue)} " 

pp Store.where("annual_revenue >= ?", 1000000)