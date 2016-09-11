require 'faker'
50.times do
	User.create(name: Faker::Name.name,
	 			email: Faker::Internet.email,
	  			age: rand(18..65),
	   			password_digest: "123",
	   			location: Faker::Address.city,
	   			bio: Faker::Hipster.paragraph(2),
				picture: "https://s3-us-west-2.amazonaws.com/thebonafideclub/" + ["1", "2", "3", "4", "5", "6", "7"].sample
				)
end

50.times do
	Like.create(
		liker: User.all[rand(User.count)],
		liked: [true, false].sample,
		likee: User.all[rand(User.count)]
		)
end

50.times do
	Match.create(
		matcher: User.all[rand{User.count}],
		matchee: User.all[rand(User.count)]
		)
end






	# Like.create(user_id: rand(1..50),
	# 			liked: rand(1..50),
	# 			match_id: rand(1..50))

	# Match.create(user_id: rand(1..50),
	# 			 match_id: rand(1..50))
