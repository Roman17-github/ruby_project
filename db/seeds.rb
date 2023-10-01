# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


countries = Country.create([{ name: "Россия", population: 150000000 }, { name: "Австралия", population: 15000000 }])
regions = Region.create([{name: "Кавказ", country: countries[0]}, {name: "Карелия", country: countries[0]}, {name: "Страна каналов", country: countries[1]}])
cities = City.create([{name: "Кисловолдск", region: regions[0]}, {name: "Петрозаводск", region: regions[1]}, {name: "Сидней", region: regions[2]}])
Turbasis.create([{name: "Горный ветер", city: cities[0]}, {name: "Северное сияние", city: cities[1]}])



