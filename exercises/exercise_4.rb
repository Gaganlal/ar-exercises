require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

surrey = Store.create(name: "Surrey", annual_revenue: 224000, womens_apparel: true )
whistler = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true )
yaletown = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true , womens_apparel: true )

@mens_store = Store.where(mens_apparel: true, womens_apparel: nil)

# pp @mens_Store
Store.all.each do |store|
  puts "#{store.name} : #{store.annual_revenue}"
end

@womens_store = Store.where(womens_apparel: true)

pp Store.where("annual_revenue < ?", 1000000).where(womens_apparel: true)





