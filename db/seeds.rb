# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "create properties"

Property.create(title: "millenium", price: 150, description: "grand vaisseau, vitesse lumière")
Property.create(title: "la contree", price: 100, description: "convient aux arrondis")

puts "#{Property.count}"
