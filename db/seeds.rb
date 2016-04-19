# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


5.times do |n|
  user = User.create!(name: Faker::Name.name,
             location: Faker::Address.city + ", " + Faker::Address.state_abbr,
             username: Faker::Internet.user_name,
             password: "password")

  4.times do
  mark = Mark.create!(message: Faker::Company.catch_phrase + " " + Faker::Company.bs + Faker::Company.bs + Faker::Company.bs, user_id: user.id)
  end
end
