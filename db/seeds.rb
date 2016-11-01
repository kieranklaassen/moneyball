# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email


Feature.delete_all
10.times.each do
  Feature.create(
    name: Faker::Hipster.sentence(2),
    description: Faker::Hipster.paragraph(1),
    image: Faker::Placeholdit.image
  )
end
