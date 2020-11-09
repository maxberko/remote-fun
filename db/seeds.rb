# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Game.delete_all

50.times do
    Game.create(title:"#{Faker::Game.title}", description:"#{Faker::Company.bs}", url:"www.fakeURL.com", price: rand(1..100), paying: Faker::Boolean.boolean, score: rand(1..4242),)
end