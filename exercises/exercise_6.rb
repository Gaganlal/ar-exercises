require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

class Employees < ActiveRecord::Base
  belongs_to :store
  validates :store_id, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, :numericality => { :greater_than => 40, :less_than => 200 } 
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 20)
@store1.employees.create(first_name: "lisa", last_name: "Visrafni", hourly_rate: 65)
@store1.employees.create(first_name: "Daniel", last_name: "Vanilla", hourly_rate: 45)

@store2.employees.create(first_name: "Gabriel", last_name: "amoaka", hourly_rate: 30)
@store2.employees.create(first_name: "Ashley", last_name: "Curickshank", hourly_rate: 60)

pp @store1.employees
