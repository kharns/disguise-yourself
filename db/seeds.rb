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
User.destroy_all
Costume.destroy_all
Booking.destroy_all

user1 = User.create(username: "john_doe", email: "john@example.com", encrypted_password: "123456")
user2 = User.create(username: "jane_smith", email: "jane@example.com", encrypted_password: "1234567")
user3 = User.create(username: "bob_ross", email: "bob@example.com", encrypted_password: "asdfgh" )


file = URI.parse("https://images.pexels.com/photos/28830053/pexels-photo-28830053/free-photo-of-pirata-historico-en-un-gran-velero-usando-un-telescopio.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1").open
costume1 = Costume.new(title: "pirate" , description: "This pirate costume includes the shirt-like t-shirt and vest that are one, a bandana, a panty hose, a belt and overboots", price: 20.0, user: user2 )
costume1.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
costume1.save

file = URI.parse("https://https://www.disfrazjaiak.com/27568-large_default/disfraz-batman-adulto-disfraces-superheroes.jpg").open
costume2 = Costume.new(title: "superhero", description: "Batman costume for adults, in size L. Includes: padded suit with matching boot covers, cape and mask of Superheroe.", price: 25.0, user: user1)
costume2.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
costume2.save

file = URI.parse("https://sc04.alicdn.com/kf/H3ba607eaa6a0444d8a397ff8186aae0cq.jpg").open
costume3 = Costume.new(title: "predator", description: "Authentic Predator Design: This life-size realistic robot costume predator cosplay costume is designed to look like the iconic alien hunter from the Predator franchise, perfect for movie fans.", price: 125.0, user: user3)
costume3.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
costume3.save

booking1 = Booking.create(start_date: Date.today, end_date: Date.today + 3, total_price: 60.0, user: user1, costume: costume1, status: "confirmed")
booking2 = Booking.create(start_date: Date.today + 5, end_date: Date.today + 7, total_price: 50.0, user: user2, costume: costume2, status: "pending")
