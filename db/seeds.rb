# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Cleaning database..."
Booking.destroy_all
Property.destroy_all
User.destroy_all

puts "Creating users..."

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

puts "#{User.count} created"

puts "Creating properties..."


Property.create!( user_id: blue.id,
                  title: 'Disneyland',
                  price: '400',
                  description: "Véritable château de conte de fées avec ses flèches vertigineuses, ses tourelles richement décorées, ses toits d'un bleu royal, ses vitraux et ses tapisseries, la structure mesure 50 mètres de haut. Le château est entouré d'arbres en forme de cube et abrite un dragon assoupi qui s'éveille parfois pour rugir et souffler de la fumée par ses naseaux.
                  Attention, ont été signalés des chiens qui parlaient...",
                  category: 'Château',
                  address: "Disneyland Paris, 77700 Chessy")

Property.create!( user_id: blue.id,
                  title: 'Poudlard',
                  price: '500',
                  description: "Un portrait peut en cacher un autre. Pensionnat situé sur les collines d'Écosse. Il possède sept étages et plusieurs hautes tours, ainsi qu'un grand parc comprenant un lac, une forêt et plusieurs serres à des fins botaniques. Un grand nombre de passages dissimulés, d'escaliers et de portraits de peinture mouvants rendent l'établissement nécessite un strict respect du règlement.",
                  category: 'Château',
                  address: "Alnwick NE66 1NQ, Royaume-Uni"
                  )

Property.create!( user_id: blue.id,
                  title: 'Maman j ai raté l avion',
                  price: '200',
                  description: "Jolie maison au bord du lac Michigan (Illinois), dans un quartier aisé. Un oeil attentif est requis, des cambriolages ont été signalés",
                  category: 'Maison',
                  address: "Winnetka" )

Property.create!( user_id: red.id,
                  title: 'Isengard - Tour de Sarouman',
                  price: '150',
                  description: "Forteresse de la terre du milieu.  il est surplombé au nord par le dernier sommet montagneux de la chaîne, le Methedras. Il se situe dans une vallée définie par deux prolongements des Monts Brumeux : Nan Curunír, la Vallée de Saroumane. Le fleuve Isen prend sa source à l'est de l'Isengard. Etage élevé, s'abstenir si vous êtes sujet au vertige",
                  category: 'Tour',
                  address: "Piton de la fournaise" )

Property.create!( user_id: red.id,
                  title: 'Breaking Bad',
                  price: '20',
                  description: "Logement un peu vétuste - les armes sont fournies",
                  category: 'Camping-car',
                  address: "Albuquerque" )

Property.create!( user_id: violet.id,
                  title: 'Millenium Falcon',
                  price: '300',
                  description: "Des connaissances en techniques sont requises. Permet de nombreux déplacements",
                  category: 'Vaisseau',
                  address: "Futuna" )

Property.create!( user_id: violet.id,
                  title: 'Shinning',
                  price: '200',
                  description: "Hôtel excentré, au calme. 142 chambres situé à Estes Park, au Colorado. Il offre une vue panoramique sur les montagnes Rocheuses et particulièrement le pic Longs.",
                  category: 'Hôtel',
                  address: " Estes Park, comté de Larimer, Colorado" )

Property.create!( user_id: green.id,
                  title: 'Lampe du génie',
                  price: '100',
                  description: "Plus grand qu'il n'y parait",
                  category: 'Autre',
                  address: "Casablanca, Maroc" )

Property.create!( user_id: green.id,
                  title: 'Charmed',
                  price: '200',
                  description: "Maison charmante et qui saura vous charmer",
                  category: 'Maison',
                  address: "1329 Prescott Street à San Francisco" )

Property.create!( user_id: green.id,
                  title: 'Donjon Rouge - Port-Royal',
                  price: '600',
                  description: "Jolie vue - les sièges peuvent piquer.",
                  category: 'Donjon',
                  address: "Port-Royal, Terre de la couronne" )

Property.create!( user_id: blue.id,
                  title: 'Repaire de Quasimodo',
                  price: '400',
                  description: "Vous apercevrez peut-être Esmeralda, ne vous penchez pas trop",
                  category: 'Tour',
                  address: '6 Parvis Notre-Dame - Place Jean-Paul II, 75004 Paris')


puts "Finished! #{Property.count} properties created"
