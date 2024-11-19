# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'
require "open-uri"
Booking.destroy_all
Costume.destroy_all
User.destroy_all

user1 = User.create(username: "john_doe", email: "john@example.com", password: "123456")
user2 = User.create(username: "jane_smith", email: "jane@example.com", password: "1234567")
user3 = User.create(username: "bob_ross", email: "bob@example.com", password: "asdfgh" )


file = URI.parse("https://images.pexels.com/photos/28830053/pexels-photo-28830053/free-photo-of-pirata-historico-en-un-gran-velero-usando-un-telescopio.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1").open
costume1 = Costume.new(title: "Pirate" , description: "This pirate costume includes the shirt-like t-shirt and vest that are one, a bandana, a panty hose, a belt and overboots", price: 20.0, owner: user2 )
costume1.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
costume1.save

file = URI.parse("https://img.freepik.com/premium-photo/batman-superhero-limited-edition-costume_947926-952.jpg").open
costume2 = Costume.new(title: "superhero", description: "Batman costume for adults, in size L. Includes: padded suit with matching boot covers, cape and mask of Superheroe.", price: 25.0, owner: user1)
costume2.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
costume2.save

file = URI.parse("https://sc04.alicdn.com/kf/H3ba607eaa6a0444d8a397ff8186aae0cq.jpg").open
costume3 = Costume.new(title: "Predator", description: "Authentic Predator Design: This life-size realistic robot costume predator cosplay costume is designed to look like the iconic alien hunter from the Predator franchise, perfect for movie fans.", price: 125.0, owner: user3)
costume3.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
costume3.save

file = URI.parse("https://i.pinimg.com/564x/7c/66/21/7c66216e03c8060ca67f0f476d57060b.jpg").open
costume4 = Costume.new(title: "The Mandalorian", description: " Armor: Made with high-quality materials, the armor is durable and comfortable, allowing for easy movement.
                                                                Helmet: Designed to resemble the helmet of the main character, Din Djarin, with precise details and an ergonomic design.
                                                                Cape: A long and wide cape that adds a dramatic touch to the ensemble.
                                                                Accessories: Includes a blaster (laser gun) and other accessories to complete the look.", price: 150.0, owner: user1)
costume4.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
costume4.save

booking1 = Booking.create!(start_date: Date.today, end_date: Date.today + 3, total_price: 60.0, user: user1, costume: costume1, status: "accepted")
booking2 = Booking.create(start_date: Date.today + 5, end_date: Date.today + 7, total_price: 50.0, user: user2, costume: costume2, status: "pending")
