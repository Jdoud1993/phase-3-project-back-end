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
