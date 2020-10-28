# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Game.create(title:"The test game", description:"That's a great game", url:"www.game.com", price:100, paying: true, score: 42)
Game.create(title:"Slap remote", description:"Amazing slaps!", url:"www.slaps.com", price:100, paying: false, score: 42)