require "open-uri"

puts 'Cleaning database...'
Booking.destroy_all
GrannyOffer.destroy_all
User.destroy_all

# User.create(email: "oma@gmail.com", password: "123456", first_name: "Esther", last_name: "Wynder", address: "123 Fakestreet", age: 99, granny: true)
# Booking.create(start_date: "20220823", end_date: "20220824", status: true)

puts "populate database with users.."

granny_photos = ["https://images.pexels.com/photos/5333753/pexels-photo-5333753.jpeg?auto=compress&cs=tinysrgb&w=1200",
  "https://images.pexels.com/photos/7884125/pexels-photo-7884125.jpeg?auto=compress&cs=tinysrgb&w=1200",
  "https://images.pexels.com/photos/7086474/pexels-photo-7086474.jpeg?auto=compress&cs=tinysrgb&w=1200",
  "https://images.pexels.com/photos/5231307/pexels-photo-5231307.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load",
  "https://images.pexels.com/photos/509236/pexels-photo-509236.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load",
  "https://images.pexels.com/photos/5637573/pexels-photo-5637573.jpeg?auto=compress&cs=tinysrgb&w=1200&lazy=load",
  "https://images.pexels.com/photos/7330112/pexels-photo-7330112.jpeg?auto=compress&cs=tinysrgb&w=1200",
  "https://images.pexels.com/photos/5231289/pexels-photo-5231289.jpeg?auto=compress&cs=tinysrgb&w=1200",
  "https://images.pexels.com/photos/8437017/pexels-photo-8437017.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
  "https://images.pexels.com/photos/8173543/pexels-photo-8173543.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
  "https://images.pexels.com/photos/7544692/pexels-photo-7544692.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
  "https://images.pexels.com/photos/5257495/pexels-photo-5257495.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
  "https://images.pexels.com/photos/7329517/pexels-photo-7329517.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2" ]


granny_photos.each do |granny_photo|
  file = URI.open(granny_photo)
  user = User.new(first_name: Faker::Name.female_first_name,
                  last_name: Faker::Name.last_name,
                  age: rand(54..88),
                  address: Faker::Address.city,
                  introduction: Faker::TvShows::FamilyGuy.quote,
                  email: Faker::Internet.email,
                  password: 123456,
                  granny: true
                )
  user.photo.attach(io: file, filename: "#{user.first_name}.png", content_type: "image/png")
  user.save!
  puts "#{user.first_name} was successfully saved."

  granny_offer = GrannyOffer.new(hug_amount: rand(1..30),
                                 available: true,
                                 user: user,
                                 details: Faker::TvShows::FamilyGuy.quote)
  granny_offer.save!
  puts " Granny_offer with #{granny_offer.id} was successfully saved."


end

puts "test add Booking seed"
new_booking = Booking.new(start_date: Date.new(2022,8,25),
                          end_date: Date.new(2022,8,27),
                          status: true,
                          user: User.last,
                          granny_offer: GrannyOffer.first)
new_booking.save!

new_booking = Booking.new(start_date: Date.new(2022,8,25),
                          end_date: Date.new(2022,8,27),
                          status: true,
                          user: User.last,
                          granny_offer: GrannyOffer.first)
new_booking.save!
