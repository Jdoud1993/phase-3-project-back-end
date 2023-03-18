puts "🌱 Seeding shelters..."

Shelter.create(
    name: "Active Adoption Animal Care Center",
    address: Faker::Address.full_address,
    phone: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.safe_email(name: "Active Adoption Animal Care Center"),
    image: "https://gray-wbtv-prod.cdn.arcpublishing.com/resizer/g4JRWxxjT6d1ZU036kiKsfUaHrg=/1200x675/smart/filters:quality(85)/cloudfront-us-east-1.images.arcpublishing.com/gray/R4NYICXCYFGRDEVZQWW2LT5MTY.jpg"
)
Shelter.create(
    name: "Kennel Mate Animal Care Center",
    address: Faker::Address.full_address,
    phone: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.safe_email(name: "Kennel Mate Animal Care Center"),
    image: "https://gray-wbtv-prod.cdn.arcpublishing.com/resizer/g4JRWxxjT6d1ZU036kiKsfUaHrg=/1200x675/smart/filters:quality(85)/cloudfront-us-east-1.images.arcpublishing.com/gray/R4NYICXCYFGRDEVZQWW2LT5MTY.jpg"
)
Shelter.create(
    name: "Random Animal Care Center",
    address: Faker::Address.full_address,
    phone: Faker::PhoneNumber.phone_number,
    email: Faker::Internet.safe_email(name: "Random Animal Care Center"),
    image: "https://gray-wbtv-prod.cdn.arcpublishing.com/resizer/g4JRWxxjT6d1ZU036kiKsfUaHrg=/1200x675/smart/filters:quality(85)/cloudfront-us-east-1.images.arcpublishing.com/gray/R4NYICXCYFGRDEVZQWW2LT5MTY.jpg"
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
        shelter_id: rand(1..3),
        image: "https://static.vecteezy.com/system/resources/previews/007/790/632/non_2x/silhouette-of-dog-on-white-background-free-vector.jpg"
    )
end

10.times do 
    Animal.create(
        name: Faker::Creature::Cat.name,
        species: "Cat",
        breed: Faker::Creature::Cat.breed,
        sex: Faker::Creature::Dog.gender,
        age: rand(1..20),
        shelter_id: rand(1..3),
        image: "https://i.pinimg.com/600x315/f2/b8/63/f2b863a88f008ca4ce063b629f939a25.jpg"
    )
end

puts "✅ Done seeding!"