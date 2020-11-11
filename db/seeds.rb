# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require "open-uri"

Game.delete_all

unless Rails.env.production?
  1..20.times.each do |n|
    game = Game.new(
      title:"#{Faker::Game.title}",
      description:"#{Faker::Company.bs}",
      url:"www.fakeURL.com",
      price: rand(1..100),
      paying: Faker::Boolean.boolean,
      score: rand(1..42)
    )
    file = URI.open('https://picsum.photos/200')
    game.photos.attach(io: file, filename: 'placeholder.png', content_type: 'image/jpg')
    game.save
  end
end