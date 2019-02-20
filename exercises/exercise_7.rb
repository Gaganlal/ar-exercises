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

# puts "enter a store name"
# store_input = gets.chomp

# @store5 = Store.new(name: "", annual_revenue: "", mens_apparel: true)

# if @store5.valid? do
#   @store5.save
# else
#   pp @store5.errors
# end


@store5 = Store.create(name: "", annual_revenue: "", mens_apparel: true)

# puts @store5.errors[:name] 
# puts @store5.errors[:annual_revenue] 
if @store5.errors 
  @store5.errors.each do |error| 
    pp "#{error}: #{@store5.errors[error]}"
  end  
end

