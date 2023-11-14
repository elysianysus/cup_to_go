# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# db/seeds.rb

require "open-uri"
puts "Destroying all data"

Booking.destroy_all
Cup.destroy_all
User.destroy_all
puts "Creating Users"

yamada = User.create!(
  name: 'Sakura Yamada',
  email: 'lkyvcvc@gmail.com',
  phone_number: '8023456',
  password: '123456',
)
puts "user1 created"


tanaka = User.create!(
  name: 'Hiro Tanaka',
  email: 'aqusix@gmail.com',
  phone_number: '9012345',
  password: '123456'
)
puts "user2 created"

suzuki = User.create!(
  name: 'Akiho Suzuki',
  email: 'am2qua@gmail.com',
  phone_number: '1203456',
  password: '123456'
)
puts "user3 created"

nagatomo = User.create!(
  name: 'Kei Nagatomo',
  email: 'aq2572@gmail.com',
  phone_number: '5045678',
  password: '123456'
)
puts "user4 created"

watanabe = User.create!(
  name: 'Akane Watanabe',
  email: 'chrysanduke@gmail.com',
  phone_number: '7056789',
  password: '123456'
)
puts "user5 created"

sato = User.create!(
  name: 'Toshiro Sato',
  email: 'flennww@gmail.com',
  phone_number: '8067890',
  password: '123456'
)
puts "user6 created"

kimura = User.create!(
  name: 'Naomi Kimura',
  email: 'me@duke.vc',
  phone_number: '9078901',
  password: '123456'
)
puts "user7 created"

nakamura = User.create!(
  name: 'Yoshito Nakamura',
  email: 'ai.keroro.robot@gmail.com',
  phone_number: '1201234',
  password: '123456'
)
puts "user8 created"

okada = User.create!(
  name: 'Emi Okada',
  email: 'vinccileungky@gmail.com',
  phone_number: '5090123',
  password: '123456'
)
puts "user9 created"

ishikawa = User.create!(
  name: 'Daisuke Ishikawa',
  email: 'ttaqua@live.com',
  phone_number: '7023456',
  password: '123456'
)
puts "user10 created"

kozuki = User.create!(
  name: 'Rin Kozuki',
  email: 'file@duke.vc',
  phone_number: '8034567',
  password: '123456'
)
puts "user11 created"

User.create!(
  name: 'Mariko Inoue',
  email: 'web@duke.vc',
  phone_number: '9045678',
  password: '123456'
)
puts "user12 created"

# cups

cup1 = Cup.create!(
  name: "Tokyo Skyline Bottle",
  category: "bottle",
  location: "Starbucks Shibuya Crossing, 2-6-17 Dogenzaka, Shibuya, Tokyo 150-0043",
  volume: 500,
  description: "A sleek bottle featuring a silhouette of Tokyo's skyline.",
  price: 200,
  user: yamada)
puts "cup 1 created"
file = URI.open("https://image.rakuten.co.jp/seishinonlineshop1/cabinet/cup/cup-love2_a.jpg")
cup1.photo.attach(io: file, filename: "cup1.png", content_type: "image/png")
cup1.save
puts "cup 1 photo uploaded"

cup2 = Cup.create!(
  name: "Cherry Blossom Cup",
  category: "cup",
  location: "Starbucks Shinjuku, 3-17-7 Shinjuku, Shinjuku-ku, Tokyo 160-0022",
  volume: 350,
  description: "A vibrant cup adorned with cherry blossoms, perfect for spring.",
  price: 150,
  user: tanaka
)
puts "cup 2 created"
file = URI.open("https://shop.r10s.jp/naturum/cabinet/goods/02863/045_1.jpg")
cup2.photo.attach(io: file, filename: "cup2.png", content_type: "image/png")
cup2.save
puts "cup 2 photo uploaded"


cup3 = Cup.create!(
  name: "Mount Fuji Thermos",
  category: "thermos",
  location: "Starbucks Harajuku, 1-14-30 Jingumae, Shibuya, Tokyo 150-0001",
  volume: 600,
  description: "Keep your drinks hot with this Mount Fuji-inspired thermos.",
  price: 300,
  user: suzuki
)
puts "cup 3 created"
file = URI.open("https://tshop.r10s.jp/kurashikenkou/cabinet/573423-500.jpg")
cup3.photo.attach(io: file, filename: "cup3.png", content_type: "image/png")
cup3.save
puts "cup 3 photo uploaded"

cup4 = Cup.create!(
  name: "Imperial Palace Mug",
  category: "mug",
  location: "Starbucks Chiyoda, 1-1 Chiyoda, Chiyoda-ku, Tokyo 100-0001",
  volume: 400,
  description: "A classic mug featuring the beautiful Imperial Palace.",
  price: 180,
  user: nagatomo
)
puts "cup 4 created"
file = URI.open("https://tshop.r10s.jp/kurashikenkou/cabinet/tasya46/7117817_1-e.jpg")
cup4.photo.attach(io: file, filename: "cup4.png", content_type: "image/png")
cup4.save
puts "cup 4 photo uploaded"

cup5 = Cup.create!(
  name: "Sumida River Bottle",
  category: "bottle",
  location: "Starbucks Kinshicho, 4-27-14 Kotobashi, Sumida-ku, Tokyo 130-0022",
  volume: 450,
  description: "A durable bottle with a design inspired by the Sumida River.",
  price: 220,
  user: watanabe
)
puts "cup 5 created"
file = URI.open("https://tshop.r10s.jp/kurashikenkou/cabinet/tasya80/7184362-e.jpg")
cup5.photo.attach(io: file, filename: "cup5.png", content_type: "image/png")
cup5.save
puts "cup 5 photo uploaded"

cup6 = Cup.create!(
  name: "Asakusa Sensoji Cup",
  category: "cup",
  location: "Starbucks Asakusa, 2-3-1 Asakusa, Taito-ku, Tokyo 111-0032",
  volume: 300,
  description: "A traditional cup featuring Asakusa's Sensoji Temple.",
  price: 160,
  user: sato
)
puts "cup 6 created"
file = URI.open("https://image.rakuten.co.jp/e-kitchen/cabinet/description/100728_221017/100728_01.jpg")
cup6.photo.attach(io: file, filename: "cup6.png", content_type: "image/png")
cup6.save
puts "cup 6 photo uploaded"

cup7 = Cup.create!(
  name: "Akihabara Electric Thermos",
  category: "thermos",
  location: "Starbucks Akihabara, 1-1 Kanda Hanaokacho, Chiyoda-ku, Tokyo 101-0028",
  volume: 550,
  description: "A thermos with a high-tech design, homage to Akihabara.",
  price: 210,
  user: yamada
)
puts "cup 7 created"
file = URI.open("https://tshop.r10s.jp/kurashikenkou/cabinet/web05/103111.jpg")
cup7.photo.attach(io: file, filename: "cup7.png", content_type: "image/png")
cup7.save
puts "cup 7 photo uploaded"

cup8 = Cup.create!(
  name: "Tokyo Tower Mug",
  category: "mug",
  location: "Starbucks Minato, 4-1-18 Shiba-Koen, Minato-ku, Tokyo 105-0011",
  volume: 400,
  description: "A beautifully crafted mug featuring Tokyo Tower.",
  price: 190,
  user: tanaka
)
puts "cup 8 created"
file = URI.open("https://image.rakuten.co.jp/entotsu/cabinet/du7/du-r615-738s.jpg")
cup8.photo.attach(io: file, filename: "cup8.png", content_type: "image/png")
cup8.save
puts "cup 8 photo uploaded"

puts "creating Booking"

booking1 = Booking.create(
  start_date: Date.new(2023,1,1),
  return_date: Date.new(2023,1,5),
  total_price: 800, # 200 * 4 days
  user: kimura,
  cup: cup1
)
puts "created Booking1 - 200 * 4 days"

booking2 = Booking.create(
  start_date: Date.new(2023,1,11),
  return_date: Date.new(2023,1,15),
  total_price: 800, # 200 * 4 days
  user: nakamura,
  cup: cup1
)
puts "created Booking2 - 200 * 4 days"

booking3 = Booking.create(
  start_date: Date.new(2023,2,1),
  return_date: Date.new(2023,2,5),
  total_price: 600, # 150 * 4 days
  user: okada,
  cup: cup2
)
puts "created Booking3 - 200 * 4 days"

booking4 = Booking.create(
  start_date: Date.new(2023,2,21),
  return_date: Date.new(2023,2,25),
  total_price: 1200, # 300 * 4 days
  user: ishikawa,
  cup: cup3)
puts "created Booking4"

booking5 = Booking.create(
  start_date: Date.new(2023,3,1),
  return_date: Date.new(2023,3,5),
  total_price: 720, # 180 * 4 days
  user: kozuki,
  cup: cup4
)
puts "created Booking5"

booking6 = Booking.create(
  start_date: Date.new(2023,4,1),
  return_date: Date.new(2023,4,6),
  total_price: 750, # 150 * 5 days
  user: kimura,
  cup: cup2
)
puts "created Booking6"

booking7 = Booking.create(
  start_date: Date.new(2023,4,11),
  return_date: Date.new(2023,4,16),
  total_price: 900, # 180 * 5 days
  user: ishikawa,
  cup: cup4
)
puts "created Booking7"
