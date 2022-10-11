# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
House.destroy_all
User.destroy_all

user = User.create!(email: "merouane@gmail.com", user_name: "meroaune", phone_number:"0650667799", password: "Mawmaw1993")

house = House.new(adresse: "41 rue de marchalle, 77600 Magitale, France", property_type: "Pavillon", status: true, surface: 100,
   title: "Maison de Merouane au Maroc", content: "Vente maison R+2 avec deux magasins la possibilité de construire le troisième
   étage avec deux appartements individuels avec balcon à deux pas de l hôpital
  cheikh zayed le quartier propre et deprès de toutes les communautés contacte", price: 300000, bed: 6, bath: 2, garage: 2)

house.user = user
house.save!
