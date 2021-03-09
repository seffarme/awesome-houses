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

violet = User.create( username: 'violet',
             phone: '1234560',
             email: 'violet@gmail.com',
             password: 'azerty',
            )

blue = User.create( username: 'blue',
             phone: '0123456',
             email: 'blue@gmail.com',
             password: 'azerty',
             )

green = User.create( username: 'green',
             phone: '0123456',
             email: 'green@gmail.com',
             password: 'azerty',
             )

red = User.create( username: 'red',
             phone: '0124356',
             email: 'red@gmail.com',
             password: 'azerty',
             )

Property.create!( user_id: admin.id,
                  title: 'Disneyland',
                  price: '400',
                  description: "Endroit féérique. Attention, on nous a signalez des chiens qui parlaient...",
                  category: 'funny' )

puts "Finished!"

puts "Creating properties..."

Property.create!( user_id: blue.id,
                  title: 'Disneyland',
                  price: '400',
                  description: "Endroit féérique. Attention, on nous a signalez des chiens qui parlaient...",
                  category: 'château' )

Property.create!( user_id: blue.id,
                  title: 'Harry Potter Castle',
                  price: '500',
                  description: "Un portrait peut en cacher un autre",
                  category: 'château' )

Property.create!( user_id: blue.id,
                  title: 'Maman j ai raté l avion',
                  price: '200',
                  description: "Jolie maison, un oeil attentif est requis",
                  category: 'maison' )

Property.create!( user_id: red.id,
                  title: 'Tour de Sarruman',
                  price: '150',
                  description: "Etage élevé",
                  category: 'tour' )

Property.create!( user_id: red.id,
                  title: 'Breaking Bad',
                  price: '50',
                  description: "Un peu vétuste",
                  category: 'camping-car' )

Property.create!( user_id: violet.id,
                  title: 'Millenium Falcon',
                  price: '300',
                  description: "Des connaissances en techniques sont requises. Permet de nombreux déplacements",
                  category: 'vaisseau' )

Property.create!( user_id: violet.id,
                  title: 'Shinning',
                  price: '200',
                  description: "Hôtel excentré, au calme",
                  category: 'hôtel' )

Property.create!( user_id: green.id,
                  title: 'Lampe du génie',
                  price: '100',
                  description: "Plus grand qu'il n'y parait",
                  category: 'insolite' )

Property.create!( user_id: green.id,
                  title: 'Charmed',
                  price: '200',
                  description: "Maison charmante et qui saura vous charmer",
                  category: 'maison' )


puts "Finished! #{Property.count} properties created"
