# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

15.times do |n|
  User.create(username: "User##{n}", password: "password##{n}")
end

50.times do |n|
  Message.create(body: "This is message ##{n}", user: User.find(User.pluck(:id).sample))
end