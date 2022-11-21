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
    seed.generate_reviews
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

  def generate_reviews
    10.times do |i|
      review = Review.create!(
        content_body: Faker::Lorem.sentence(word_count: 10, supplemental: false, random_words_to_add: 4),
        rating: Faker::Number.between(from: 1, to: 5),
        destination_id: Destination.all.first.id,
        user_id: User.all.first.id
      )
    end
  end
end

Review.destroy_all
Destination.destroy_all
User.destroy_all
User.create!(user_name:"UserUser", password:"1234" , password_confirmation:"1234")
User.create!(user_name:"AdminAdmin", password:"1234" , password_confirmation:"1234", admin: "true")
Seed.begin