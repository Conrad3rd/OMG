# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning database users...'
# users.destroy_all

# Movie.create(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
User.create(email: "oma@gmail.com", first_name: "Esther", last_name: "Wynder", address: "123 Fakestreet", age: 99, granny: true)

# puts 'Cleaning database bookings...'
# bookings.destroy_all

Booking.create(start_date: "20220823", end_date: "20220824", status: true)

# puts 'Cleaning database granny_offers...'
# granny_offers.destroy_all
