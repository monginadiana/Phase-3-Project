puts "🌱 Seeding data..."

user1 = User.create(username: "user1", password: "password", email: "user1@example.com", avatar: "https://res.cloudinary.com/bewld-devs/image/upload/v1664322003/devs-talk-python-api/qaneiik92eivhlgwtwru.png", bio: "Nostalgic")
user2 = User.create(username: "user2", password: "password", email: "user2@example.com", avatar: "https://res.cloudinary.com/bewld-devs/image/upload/v1664322003/devs-talk-python-api/qaneiik92eivhlgwtwru.png", bio: "Nostalgic")


newsletter1 = Newsletter.create(title: "newsletter1", description: "description", image: "https://res.cloudinary.com/bewld-devs/image/upload/v1663096621/beach-resort/room-4_l5xtfw.jpg")
newsletter2 = Newsletter.create(title: "newsletter2", description: "description", image: "https://res.cloudinary.com/bewld-devs/image/upload/v1665085024/devs-talk-python-api/lqurrlopwtzbk8avooah.png")



puts "✅ Done seeding!"