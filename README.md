### [Installation](https://graphql-ruby.org/schema/generators#graphqlinstall)
1.rails new graphql-demo
2. cd graphql-demo
3. git init
4. git commit -m 'Initial commit'
5. git add .
6. git commit -m 'Initial commit'
7. touch .ruby-gemset
8. bundle install
9. rails generate graphql:install
10. git add .
11. git commit -m 'GraphQL base setup'

### Model Generation
12. rails g model user id:integer first_name:string last_name:string email:string
13. rails g model post id:integer user_id:integer content:text
14. rails db:migrate
15. git add .
16. git commit -m 'User and Post model/migration'

### [Creation of Types/Mutations](https://graphql-ruby.org/schema/generators#graphqlinstall)
17. rails g graphql:object -h
18. rails g graphql:object User

- Create some user data
- start rails server and navigate to `http://localhost:3000/graphiql`
- Create some seed data 

19. rails g graphql:input -h
20. rails g graphql:input User
21. rails g graphql:mutation_create User
22. rails g graphql:mutation_update User
23. rails g graphql:mutation_delete User
