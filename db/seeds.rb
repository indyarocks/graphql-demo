# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

users_data = [
  {
    first_name: "Chandan",
    last_name: "Jhunjhunwal",
    email: "chandan.jhunjhunwal@gmail.com"
  },
  {
    first_name: "John",
    last_name: "Doe",
    email: "john.doe@example.com"
  }
]

User.create(users_data)

User.all.each do |user|
  user_posts_data = [
    {
      title: "First Post by #{user.first_name}",
      content: "Post Content by #{user.first_name} 1"
    },
    {
      title: "Second Post by #{user.first_name}",
      content: "Post Content by #{user.first_name} 2"
    }
  ]
  user.posts.create(user_posts_data)
end

