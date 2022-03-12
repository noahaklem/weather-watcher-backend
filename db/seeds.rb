# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Location.destroy_all

guest = User.create(username: "guest", password: "test")
noah = User.create(username: "noah", password: "test")

d = CoordinatesService.get_coordinates("denver")
gf = CoordinatesService.get_coordinates("great falls")
m = CoordinatesService.get_coordinates("miami")

denver = Location.create(latitude: d[:lat], longitude: d[:lng], user: guest)
great_falls = Location.create(latitude: gf[:lat], longitude: gf[:lng], user: guest)
miami = Location.create(latitude: m[:lat], longitude: m[:lng], user: noah)

puts "seeds complete"