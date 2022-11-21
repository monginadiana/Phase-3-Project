puts "🌱 Seeding data..."

user1 = User.create(username: "Diana", email: "dianakgmail.com", password: "password")
user2 = User.create(username: "Mongina" email: "diammkgmail.com", password: "1345")


blog1 = Blog.create(title: "Corona Virus", body: "The Corona Era is over", image: "https://assets.contenthub.wolterskluwer.com/api/public/content/943905f93e58411d84eba00cf8ba718a", user_id:user1.id, likes:4)
blog2 = Blog.create(title: "Mental Health", body: "Mens Mental Health Matter", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQs-kdBs3lf81S8PV8QC6nWDrUZoFJOfDMalexbGDVQFgUaDkLyP4IDBek9R7m-Kq0ojHQ&usqp=CAU", user_id:user2.id, likes:10)
blog3 = Blog.create(title: "Food", body: "Chapati is my favourite food", image: "https://www.shutterstock.com/image-photo/brown-chapati-kenyan-made-african-dishes-2170468363", user_id:user1.id, likes:7)

comment1= Comment.create(comment:"Lovely article", user_id:user1.id, blog_id:blog1.id)
comment2= Comment.create(comment:"Men really need to speak up", user_id: user2.id, blog_id:blog2.id )
comment2= Comment.create(comment:"Love to see", user_id: user2.id, blog_id:blog2.id )


puts "✅ Done seeding!"