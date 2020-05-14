# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Restaurant.create(name: 'Le Yen', address: 'Avenue du Prado', category: 'japanese')
#Restaurant.create(name: 'La Velada', address: 'Rue Sainte', category: 'italian')
#Restaurant.create(name: 'Starbucks', address: 'Rue de la République', category: 'french')
#Restaurant.create(name: 'MacDo', address: 'Castelanne', category: 'belgian')
#Restaurant.create(name: 'Spock', address: 'Joliette', category: 'french')
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: 'french' }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: 'italian' }
le_yen = { name: "Le Yen", address: "42 Avenue du Prado", category: 'japanese' }
la_velada = { name: "La Velada", address: "110 rue de la rep", category: 'italian' }
mac_do = { name: "Mac Do", address: "12 rue de la rep", category: 'french' }

[ dishoom, pizza_east, le_yen, la_velada, mac_do ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
