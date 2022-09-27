# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Use faker to seed
require 'faker'

# Delete everything
[Artist, User].each(&:delete_all)

# Create artists
20.times do
  first_name = Faker::Name.unique.first_name
  last_name = Faker::Name.unique.last_name
  Artist.create!(
    first_name:,
    last_name:,
    alternate_name: Faker::FunnyName.two_word_name,
    email: "#{first_name}.#{last_name.parameterize(separator: '_')}@#{Faker::Internet.domain_name}".downcase,
    telephone: Faker::Base.with_locale('fr') { Faker::PhoneNumber.cell_phone_with_country_code },
    address: Faker::Address.full_address,
    description: Faker::Lorem.paragraphs(number: 1),
    password: 'password',
    password_confirmation: 'password'
  )
end
