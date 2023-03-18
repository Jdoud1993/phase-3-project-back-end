puts "🌱 Seeding shelters..."

Shelter.create(
    name: "Active Adoption Animal Care Center",
    address: Faker::Address.full_address,
    phone: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.safe_email(name: "Active Adoption Animal Care Center")
)
Shelter.create(
    name: "Kennel Mate Animal Care Center",
    address: Faker::Address.full_address,
    phone: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.safe_email(name: "Kennel Mate Animal Care Center")
)
Shelter.create(
    name: "Random Animal Care Center",
    address: Faker::Address.full_address,
    phone: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.safe_email(name: "Random Animal Care Center")
)

puts "✅ Done seeding!"

puts "🌱 Seeding animals..."

10.times do 
    Animal.create(
        name: Faker::Creature::Dog.name,
        species: "Dog",
        breed: Faker::Creature::Dog.breed,
        sex: Faker::Creature::Dog.gender,
        age: rand(1..20),
        shelter_id: rand(1..3)
    )
end

10.times do 
    Animal.create(
        name: Faker::Creature::Cat.name,
        species: "Cat",
        breed: Faker::Creature::Cat.breed,
        sex: Faker::Creature::Dog.gender,
        age: rand(1..20),
        shelter_id: rand(1..3)
    )
end

puts "✅ Done seeding!"