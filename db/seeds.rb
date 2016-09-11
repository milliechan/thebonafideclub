require 'faker'
50.times do
	User.create(name: Faker::Name.name,
	 			email: Faker::Internet.email,
	  			age: rand(18..65),
	   			password_digest: "123",
	   			location: Faker::Address.city,
	   			bio: Faker::Hipster.paragraph(2))

	Like.create(user_id: rand(1..50),
				liked: rand(1..50),
				match_id: rand(1..50))

	Match.create(user_id: rand(1..50),
				 match_id: rand(1..50))
end
