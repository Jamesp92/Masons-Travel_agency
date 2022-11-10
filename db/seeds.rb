# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

class Seed

  def self.begin
    seed = Seed.new
    seed.generate_destinations 
  end

  def generate_destinations 
    ratings = [2.4, 3.4, 5.5, 4.7, 3.5]
    20.times do |i|
      destination = Destination.create!(
        city: Faker::Address.city,
        country: Faker::Address.country,
        overall_rating: (ratings).sample 
      )
    end
  end

  puts "Fake desitnations created" 




end

Seed.begin