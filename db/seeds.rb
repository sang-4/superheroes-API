# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Creating"

20.times do
    Hero.create(
        name: Faker::Name.name,
        super_name: Faker::Superhero.name
    )
    end

    
20.times do
    Power.create(
        name: Faker::Superhero.power,
        description: Faker::Lorem.sentence
    )
    end

HeroPower.create!(
    strength: "Strong",
    hero_id: 1,
    power_id: 1)

HeroPower.create!(
    strength: "Weak",
    hero_id: 2,
    power_id: 2)

HeroPower.create!(
    strength: "Average",
    hero_id: 3,
    power_id: 3)

HeroPower.create!(
    strength: "Weak",
    hero_id: 4,
    power_id: 4)

HeroPower.create!(
    strength: "Strong",
    hero_id: 5,
    power_id: 5)

HeroPower.create!(
    strength: "Average",
    hero_id: 6,
    power_id: 6)

HeroPower.create!(
    strength: "Strong",
    hero_id: 7,
    power_id: 7)
    

puts "Created"

