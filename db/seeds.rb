# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Property.destroy_all
User.destroy_all

puts "Creating user..."

admin = User.create!( username: 'admin',
             phone: '0123456',
             email: 'admin@gmail.com',
             password: 'azerty' )

Property.create!( user_id: admin.id,
                  title: 'Disneyland',
                  price: '400',
                  description: "Endroit féérique. Attention, on nous a signalez des chiens qui parlaient...",
                  category: 'funny' )

puts "Finished!"
