# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."

User.destroy_all

puts "Creating user..."

User.create( username: 'violet',
             phone: '1234560',
             email: 'violet@gmail.com',
             password: 'azerty',
            )

User.create( username: 'blue',
             phone: '0123456',
             email: 'blue@gmail.com',
             password: 'azerty',
             )

User.create( username: 'green',
             phone: '0123456',
             email: 'green@gmail.com',
             password: 'azerty',
             )

User.create( username: 'red',
             phone: '0124356',
             email: 'red@gmail.com',
             password: 'azerty',
             )


puts "Finished!"
