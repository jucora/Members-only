# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 50.times do |n|
# 	name = Faker::Name.name
# 	email = "example-#{n+1}@mail.com"
# 	password = "password"

# 	User.create(
# 		name: name,
# 		email: email,
# 		password: password,
# 		password_confirmation: password
# 		)
# end

100.times do |n|
	title = "This is the title of the post #{n+1}"
	body = "This is the content of the post #{n+1}"
	user_id = rand(1..50)

	Post.create(
		title: title,
		body: body,
		user_id: user_id 
		)
end
