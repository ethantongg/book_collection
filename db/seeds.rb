# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Book.create!([
  {
    title: "The Life of a Turtle",
    author: "Ethan Tong",
    price: 19.99,
    published_date: "2020-01-01"
  },
  {
    title: "The Mirror, the Lion and the Audacity of the Little Dog",
    author: "C.S. Something",
    price: 14.50,
    published_date: "2018-05-10"
  },
  {
    title: "Origami for Cats",
    author: "Cat Master",
    price: 9.99,
    published_date: "2021-03-15"
  },
  {
    title: "The Weight of a Hundred Kilograms",
    author: "Gym Bro",
    price: 24.99,
    published_date: "2019-07-21"
  },
  {
    title: "Rails Deployment Nightmares",
    author: "You",
    price: 29.99,
    published_date: "2026-02-02"
  }
])
