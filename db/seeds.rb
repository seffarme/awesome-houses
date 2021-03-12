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

jonathan = User.create( username: 'Jonathan',
             phone: '1234560',
             email: 'jonathan@gmail.com',
             password: 'azerty',
            )

elodie = User.create( username: 'Elodie',
             phone: '0123456',
             email: 'elodie@gmail.com',
             password: 'azerty',
             )

laury = User.create( username: 'Laury',
             phone: '0123456',
             email: 'laury@gmail.com',
             password: 'azerty',
             )

thierry = User.create( username: 'Thierry',
             phone: '0124356',
             email: 'thierry@gmail.com',
             password: 'azerty',
             )

puts "#{User.count} created"

puts "Creating properties..."


Property.create!( user_id: jonathan.id,
                  title: 'Disneyland',
                  price: '400',
                  description: "Véritable château de conte de fées avec ses flèches vertigineuses, ses tourelles richement décorées, ses toits d'un bleu royal, ses vitraux et ses tapisseries, la structure mesure 50 mètres de haut. Le château est entouré d'arbres en forme de cube et abrite un dragon assoupi qui s'éveille parfois pour rugir et souffler de la fumée par ses naseaux.
                  Attention, ont été signalés des chiens qui parlaient...",
                  category: 'Château',
                  address: "Disneyland Paris, 77700 Chessy")

Property.create!( user_id: jonathan.id,
                  title: 'Poudlard',
                  price: '500',
                  description: "Un portrait peut en cacher un autre. Pensionnat situé sur les collines d'Écosse. Il possède sept étages et plusieurs hautes tours, ainsi qu'un grand parc comprenant un lac, une forêt et plusieurs serres à des fins botaniques. Un grand nombre de passages dissimulés, d'escaliers et de portraits de peinture mouvants nécessite un strict respect du règlement.",
                  category: 'Château',
                  address: "Alnwick NE66 1NQ, Royaume-Uni"
                  )

Property.create!( user_id: jonathan.id,
                  title: "Maison des McCallister",
                  price: '200',
                  description: "Jolie maison au bord du lac Michigan (Illinois), dans un quartier aisé. Un oeil attentif est requis, des cambriolages ont été signalés",
                  category: 'Maison',
                  address: "Winnetka" )

Property.create!( user_id: laury.id,
                  title: 'Isengard - Tour de Sarouman',
                  price: '150',
                  description: "Forteresse de la terre du milieu. Surplombée au nord par le dernier sommet montagneux de la chaîne, le Methedras. Il se situe dans une vallée définie par deux prolongements des Monts Brumeux : Nan Curunír, la Vallée de Saroumane. Le fleuve Isen prend sa source à l'est de l'Isengard. Etage élevé, s'abstenir si vous êtes sujet au vertige.",
                  category: 'Tour',
                  address: "Halkirk KW12 6UR, Royaume-Uni" )

Property.create!( user_id: laury.id,
                  title: 'Caravane de Jesse Pinkman',
                  price: '20',
                  description: "Logement un peu vétuste - les armes sont fournies.",
                  category: 'Camping-car',
                  address: "Isleta Pueblo - Albuquerque, Nouveau-Mexique - États-Unis" )

Property.create!( user_id: laury.id,
                  title: 'Millenium Falcon',
                  price: '300',
                  description: "Des connaissances en techniques sont requises. Permet de nombreux déplacements",
                  category: 'Vaisseau',
                  address: "Futuna" )

Property.create!( user_id: laury.id,
                  title: 'Stanley Hotel',
                  price: '200',
                  description: "Hôtel excentré, au calme. 142 chambres. Situé à Estes Park, au Colorado. Il offre une vue panoramique sur les montagnes Rocheuses et particulièrement le pic Longs.",
                  category: 'Hôtel',
                  address: "1776 Mountainside Dr, Estes Park, CO 80511, États-Unis" )

Property.create!( user_id: elodie.id,
                  title: 'Lampe du génie',
                  price: '100',
                  description: "Plus grand qu'il n'y parait. Situé dans le bazar d'Agrabah, vous aurez de la difficulté à trouver mais une fois entré, un monde de possibilités s'ouvre à vous!",
                  category: 'Autre',
                  address: "Avenue Al Wahda Al Ifriquia, Casablanca, Maroc" )

Property.create!( user_id: laury.id,
                  title: 'Manoir Halliwell',
                  price: '200',
                  description: "Maison charmante et qui saura vous charmer.",
                  category: 'Maison',
                  address: "Steiner St &, Hayes St, San Francisco, CA 94117, États-Unis" )

Property.create!( user_id: elodie.id,
                  title: 'Donjon Rouge',
                  price: '600',
                  description: "Jolie vue mer - de nombreuses chambres. Les sièges peuvent piquer.",
                  category: 'Donjon',
                  address: "Тахтоямск - Oblast de Magadan -Russie" )

Property.create!( user_id: elodie.id,
                  title: 'Repaire de Quasimodo',
                  price: '400',
                  description: "Situé sur l'île de la Cité, siège de l'archidiocèse de Paris, dédiée à la Vierge Marie. Vue dégagée. Vous apercevrez peut-être Esmeralda, ne vous penchez pas trop. Gargouilles sympathiques.",
                  category: 'Tour',
                  address: '6 Parvis Notre-Dame - Place Jean-Paul II, 75004 Paris')

Property.create!( user_id: thierry.id,
                  title: 'La petite maison dans la prairie',
                  price: '200',
                  description: "Environnement vert. Maison en constante rénovation. Situé à Plum Creek non loin du village de Walnut Grove.",
                  category: 'Maison',
                  address: 'Minnesota')

Property.create!( user_id: laury.id,
                  title: 'Wisteria Lane',
                  price: '250',
                  description: "Maison dans le quartie résidentiel de Wisteria Lane - Fairview, dans l'État d'Eagle State. Environnement sympathique, voisins prêts à tout pour vous.",
                  category: 'Maison',
                  address: '100 Universal City Plaza, Universal City, CA 91608, États-Unis')

Property.create!( user_id: thierry.id,
                  title: 'USS Enterprise NCC-1701',
                  price: '500',
                  description: "Grâce à un moteur à distorsion, l'univers s'ouvrira à vous!",
                  category: 'Maison',
                  address: 'Futuna')

Property.create!( user_id: thierry.id,
                  title: 'Maison de Bilbo',
                  price: '100',
                  description: "Des collines verdoyantes entourent cette jolie maisonnette. Beaucoup d'arrondis, taille réduite de préférence.",
                  category: 'Maison',
                  address: 'Hobbiton, Nouvelle-Zélande')

Property.create!( user_id: laury.id,
                  title: 'Château de Kaer Morhen',
                  price: '200',
                  description: "Forteresse de l’Ancienne Mer, antre des sorceleurs de l'école du Loup.",
                  category: 'Château',
                  address: 'Autriche')

Property.create!( user_id: jonathan.id,
                  title: 'Donjon de Naheulbeuk',
                  price: '150',
                  description: "Escalier obscur et glissant, au pied duquel se situent quelques orques.",
                  category: 'Donjon',
                  address: 'Queille, Puy de dôme')

Property.create!( user_id: jonathan.id,
                  title: 'Château Ambulant',
                  price: '150',
                  description: "Très beaux paysages mouvants. Vertige, s'abstenir.",
                  category: 'Château',
                  address: 'Tokyo')

Property.create!( user_id: elodie.id,
                  title: 'Manoir Addams',
                  price: '200',
                  description: "Situé dans le quartier historique de Clinton Hill à Brooklyn, cette maison bourgeoise du XIXe siècle - de plus de 340 m² - comprend 3 chambres. Petite ambiance funèbre pour les amateurs.",
                  category: 'Autre',
                  address: '272 Lafayette Avenue, Brooklyn, NY 11238, États-Unis')


Property.create!( user_id: elodie.id,
                  title: "Chaumière d'Astérix",
                  price: '50',
                  description: "Un peu vétuste mais charme typiquement français. Poisson pouvant manquer de fraicheur.",
                  category: 'Maison',
                  address: 'Ashikuraji, Tateyama, District de Nakaniikawa, Préfecture de Toyama 930-1406, Japon')

Property.create!( user_id: elodie.id,
                  title: 'Vaisseau du Shield',
                  price: '700',
                  description: "vaisseau aérien spécifiquement conçu afin de disposer d’une source d’énergie indépendante et d’une capacité de vol illimitée, en plus des fonctions conventionnelles de tout appareil aérien. Les différents modèles sont la propriété de l’organisation d’espionnage et contre-espionnage internationale appelée le SHIELD.",
                  category: 'Vaisseau',
                  address: 'Futuna')

Property.create!( user_id: thierry.id,
                  title: "Manoir de Bruce Wayne",
                  price: '200',
                  description: "Joli Manoir contenant un quartier général souterrain installé dans un réseau de grottes se trouvant sous une résidence personnelle.",
                  category: 'Autre',
                  address: '1007 Mountain Drive, Gotham City')

Property.create!( user_id: jonathan.id,
                  title: 'Appartement de Spiderman',
                  price: '100',
                  description: "Arachnophobes, s'abstenir.",
                  category: 'Appartement',
                  address: 'New York')

Property.create!( user_id: laury.id,
                  title: 'Appartement de Carrie Bradshaw',
                  price: '200',
                  description: "Grand dressing, proche de toutes commodités. Machine à écrire sur place.",
                  category: 'Appartement',
                  address: 'Greenwich Village')

puts "Finished! #{Property.count} properties created"
