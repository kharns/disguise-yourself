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
user3 = User.create(username: "bob_ross", email: "bob@example.com", password: "asdfgh")


file = URI.parse("https://images.pexels.com/photos/28830053/pexels-photo-28830053/free-photo-of-pirata-historico-en-un-gran-velero-usando-un-telescopio.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1").open
costume1 = Costume.new(title: "Pirate" , description: "This pirate costume includes the shirt-like t-shirt and vest that are one, a bandana, a panty hose, a belt and overboots", price: 20, owner: user2 )
costume1.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
costume1.save

file = URI.parse("https://img.freepik.com/premium-photo/batman-superhero-limited-edition-costume_947926-952.jpg").open
costume2 = Costume.new(title: "superhero", description: "Batman costume for adults, in size L. Includes: padded suit with matching boot covers, cape and mask of Superheroe.", price: 25, owner: user1)
costume2.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
costume2.save

file = URI.parse("https://sc04.alicdn.com/kf/H3ba607eaa6a0444d8a397ff8186aae0cq.jpg").open
costume3 = Costume.new(title: "Predator", description: "Authentic Predator Design: This life-size realistic robot costume predator cosplay costume is designed to look like the iconic alien hunter from the Predator franchise, perfect for movie fans.", price: 125, owner: user3)
costume3.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
costume3.save

file = URI.parse("https://i.pinimg.com/564x/7c/66/21/7c66216e03c8060ca67f0f476d57060b.jpg").open
costume4 = Costume.new(title: "The Mandalorian", description: " Armor: Made with high-quality materials, the armor is durable and comfortable, allowing for easy movement.
                                                                Helmet: Designed to resemble the helmet of the main character, Din Djarin, with precise details and an ergonomic design.
                                                                Cape: A long and wide cape that adds a dramatic touch to the ensemble.
                                                                Accessories: Includes a blaster (laser gun) and other accessories to complete the look.", price: 150, owner: user1)
costume4.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
costume4.save

file = URI.parse("https://cdn.vegaoo.es/images/rep_art/gra/321/3/321385/disfraz-de-pareja-asterix-y-obelix-adulto.jpg").open
costume5 = Costume.new(title: "Asterix & Obelix", description: "Funny costumes of asterix and obelix to be the center of attention of the party", price: 30, owner: user3)
costume5.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
costume5.save

file = URI.parse("https://www.idealfiestas.com/img/cms/Carnaval%20Ideal%20fiestas/Mujer%20disfraz/Disfraces%20pirata%20500x500.jpg").open
costume6 = Costume.new(title: "pirate woman", description: "Pirate costume , ideal for carnival and theme parties. Dress up your pirate costume and board the black pearl to sail the 7 seas to search for lost treasures.", price: 25, owner: user2)
costume6.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
costume6.save

file = URI.parse("https://img.fruugo.com/product/8/43/194235438_max.jpg").open
costume7 = Costume.new(title: "Maleficent ", description: " You can be Maleficent, the Lady of all evil from Disney is 2014 live action fantasy horror with Angelina Jolie. Beware of princess Aurora.", price: 25, owner: user1)
costume7.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
costume7.save

file = URI.parse("https://images.fun.com/products/73354/1-41/adult-inflatable-minion-costume.jpg").open
costume8 = Costume.new(title: "Inflatable Minion Costume for Adults ", description: " If you are looking for the perfectly short and yellow way to impress your friends, then this Adult Inflatable Minion Costume is for you! You only have to provide the chipper and silly spirit of a minion and the costume will do the rest!", price: 15 , owner: user3)
costume8.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
costume8.save

file = URI.parse("https://i5.walmartimages.com/asr/a00a4fb4-ce91-475f-9b10-289e1e26c3b5.9cdab538c60e4dbcec687cd926ecb1bb.jpeg?odnHeight=768&odnWidth=768&odnBg=FFFFFF").open
costume9 = Costume.new(title: "Women's Maid Marian Costume ", description: " You can quit browsing for Halloween costumes for women now. You’ve struck gold. This Maid Marian Adult Women’s Costume is an astounding way to make your Halloween night a haunting experience no matter where you’re headed.
  Includes:
  • Dress with attached sash
  • Headpiece with drape ", price: 17 , owner: user2)
costume9.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
costume9.save

file = URI.parse("https://www.occitanie-sl.fr/storage/images/image?remote=https%3A%2F%2Fwww.occitanie-sl.fr%2FWebRoot%2FStore20%2FShops%2F58fbc031-5949-418d-9a45-d2b97376d1fe%2F5BCB%2F33F6%2F7D0F%2F7981%2FEE82%2F0A48%2F3549%2FBF89%2Fsumo_adultes_jumeaux.jpg&shop=58fbc031-5949-418d-9a45-d2b97376d1fe").open
costume10 = Costume.new(title: "Adult Sumo Twin Suits ", description: " Have a blast with our inflatable sumo costumes! Are you and your friends ready for an epic, laughter-filled showdown? Our inflatable sumo costumes are here to guarantee fun at any event! With their padded design and vibrant colors, these suits will transform you and your friends into sumo wrestlers in the blink of an eye.", price: 200 , owner: user3)
costume10.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
costume10.save

booking1 = Booking.new(start_date: Date.today, end_date: Date.today + 3, user: user1, costume: costume1, status: "accepted")
booking1.total_price = (booking1.end_date - booking1.start_date).to_i * booking1.costume.price
booking1.save!

booking2 = Booking.new(start_date: Date.today + 5, end_date: Date.today + 7, user: user2, costume: costume2, status: "pending")
booking2.total_price = (booking2.end_date - booking2.start_date).to_i * booking2.costume.price
booking2.save!

booking3 = Booking.new(start_date: Date.today + 2, end_date: Date.today + 5, user: user3, costume: costume3, status: "accepted")
booking3.total_price = (booking3.end_date - booking3.start_date).to_i * booking3.costume.price
booking3.save!

booking4 = Booking.new(start_date: Date.today + 1, end_date: Date.today + 4, user: user1, costume: costume4, status: "accepted")
booking4.total_price = (booking4.end_date - booking4.start_date).to_i * booking4.costume.price
booking4.save!

booking5 = Booking.new(start_date: Date.today + 3, end_date: Date.today + 6, user: user2, costume: costume5, status: "declined")
booking5.total_price = (booking5.end_date - booking5.start_date).to_i * booking5.costume.price
booking5.save!
