puts "🌱 Seeding data..."

user1 = User.create(username: "user1", password: "password", email: "user1@example.com", avatar: "https://res.cloudinary.com/bewld-devs/image/upload/v1664322003/devs-talk-python-api/qaneiik92eivhlgwtwru.png", bio: "Nostalgic")
user2 = User.create(username: "user2", password: "password", email: "user2@example.com", avatar: "https://res.cloudinary.com/bewld-devs/image/upload/v1664322003/devs-talk-python-api/qaneiik92eivhlgwtwru.png", bio: "Nostalgic")


blog1 = Blog.create(title: "Corona Virus", body: "The Corona Era is over", image: "https://assets.contenthub.wolterskluwer.com/api/public/content/943905f93e58411d84eba00cf8ba718a", user:user, likes:likes)
blog2 = Blog.create(title: "Mental Health", body: "Mens Mental Health Matter", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQs-kdBs3lf81S8PV8QC6nWDrUZoFJOfDMalexbGDVQFgUaDkLyP4IDBek9R7m-Kq0ojHQ&usqp=CAU", user:user, likes:likes)
blog3 = Blog.create(title: "Mental Health", body: "Mens Mental Health Matter", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQs-kdBs3lf81S8PV8QC6nWDrUZoFJOfDMalexbGDVQFgUaDkLyP4IDBek9R7m-Kq0ojHQ&usqp=CAU", user:user, likes:likes)

comment1= Comment.create(comment:"Lovely article", author: "Diana")
comment2= Comment.create(comment:"Men really need to speak up", author: "Mongina")


puts "✅ Done seeding!"