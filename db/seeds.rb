status = ['pending', 'accepted', 'cancel', 'complet']

content = ['Whaou, just Whaou!', 'I feel like my life has a meaning now',
'I can not remember what life was like before this', 'I will be obese but fuck it! YOLO']

Review.destroy_all
Sweet.destroy_all
Offer.destroy_all
User.destroy_all
puts 'Oh data destroyed'

############################ SWEET ##########################################

Sweet.create(
  name: 'Cappucino M&M',
  description: 'M&M with a coffe explosion',
  picture: 'https://images-na.ssl-images-amazon.com/images/I/81Y0GnZK3pL._SY450_.jpg',
  category:'Candy',
  country:
  )

Sweet.create(
  name: 'Dragibus',
  description: 'France best kept secret',
  picture: 'https://24h-chrono.fr/127-large_default/haribo-dragibus.jpg',
  category: 'Candy',
  country:

  )

Sweet.create(
  name: 'Milka Biscuit',
   description: 'Classic Milka super charge with an inside biscuit',
   picture: 'https://cdn.shopify.com/s/files/1/1232/4978/products/milka_choco_keks.jpg?v=1564727420',
   category:'Choco',
   country:

   )

Sweet.create(
  name: 'Bubble Gum',
  description: 'Specialy crafter for bubble practice',
  picture: 'https://images-na.ssl-images-amazon.com/images/I/614yjLRZ%2BNL._SX679_.jpg',
  category: 'Gum',
  country:
  )
puts "Sweets created!"

############################## USER ############################################
User.create(
  name: 'Jim' ,
  photo: 'https://www.maxim.com/.image/t_share/MTUwOTU3OTc1MDY5MDA5MDQ5/ace-ventura-jim-carrey.jpg',
  email:'rubyismylord@hotmail.com',
  password: '123456'
  )
User.create(
  name: 'Macaulay' ,
  photo: 'https://www.gannett-cdn.com/presto/2019/08/07/USAT/c21bdd69-caef-4838-861d-a7a88b877235-x.JPG?width=540&height=&fit=bounds&auto=webp',
  email:'bootstrapisevil@hotmail.com',
  password: '123456'
  )

User.create(
  name: 'Will' ,
  photo: 'https://www.thesun.co.uk/wp-content/uploads/2017/07/nintchdbpict000289398111.jpg',
  email:'cssisevil@hotmail.com',
  password: '123456'
  )

User.create(
  name: 'Victoria' ,
  photo: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5qxXw866cYtPpiIHOQumzIjXQJ2RfnRm7HPDzZlTnSdktgO_F',
  email:'jsisevil@hotmail.com',
  password: '123456'
  )

puts "Users created!"

# ################################ OFFER ####################################
Offer.create(
  content: "Hey everyone, I'm going to the US for two weeks",
  end_date: "#{date = Time.at(rand * Time.now.to_i)}",
  start_date: "#{date-10.days}",
  user_id: User.all.sample.id,
  pickup_location: ,
  status: rand(0..5),
  request_id:
  )

Offer.create(
  content: "Hey everyone, I'm going to France for two weeks",
  end_date: "#{date = Time.at(rand * Time.now.to_i)}",
  start_date: "#{date-10.days}",
  user_id: User.all.sample.id,
  pickup_location: ,
  status: rand(0..5),
  request_id:
  )

Offer.create(
  content: "Hey everyone, I'm going to the UK for two weeks",
  end_date: "#{date = Time.at(rand * Time.now.to_i)}",
  start_date: "#{date-10.days}",
  user_id: User.all.sample.id,
  pickup_location: ,
  status: rand(0..5),
  request_id:
  )

Offer.create(
  content: "Hey everyone, I'm going to Turkey for two weeks",
  end_date: "#{date = Time.at(rand * Time.now.to_i)}",
  start_date: "#{date-10.days}",
  user_id: User.all.sample.id,
  pickup_location: ,
  status: rand(0..5),
  request_id:
  )

puts "Offers created!"
####################### CHARITY ###############################

Charity.create(
  name: "Doctors without border",
  cause: "Health",
  description: 'Doctors Without Borders, is an international humanitarian medical non-governmental organisation (NGO) of French origin best known for its projects in conflict zones and in countries affected by endemic diseases.',
  picture: 'https://armacad.info/images/2016/07/doctors-without-borders-k8t3CTUSaD1UHYV2pTmtzyK1Q78nN9zW.png'
  )

Charity.create(
  name: "action against hunger",
  cause: "Hunger",
  description: 'Action Against Hunger (or Action Contre La Faim (ACF) in French) is a global humanitarian organization which originated in France and is committed to ending world hunger. The organization helps malnourished children and provides communities with access to safe water and sustainable solutions to hunger. ',
  picture: 'https://armacad.info/images/2016/07/doctors-without-borders-k8t3CTUSaD1UHYV2pTmtzyK1Q78nN9zW.png'
  )

##################### REQUEST ########################

Request.create(
  description: 'Hello I would like a couple of sweet!',
  price_cents: rand(1000..2500),
  donation_cents: rand(500..2000),
  quantity: rand(1..5),
  charity_id: Charity.all.sample.id,
  user_id: User.all.id.sample,
  sweet_id: Sweet.all.sample.id,
  )


####################### REVIEW ###############################

# requests = []
# requests = Request.all

#   rand(3..8).times do
#     review = Review.new(
#       content: content.sample,
#       rating: rand(2..5),
#       booking_id: request[:id].sample,
#     )
#     review.save!
#   end

bookings = Booking.all

bookings_id = []
bookings.each do |booking|
  bookings_id << booking.id
end

10.times do
  review = Review.new(
    content: content.sample,
    rating: rand(1..5),
    booking_id: bookings_id.sample,
  )
  review.save!
end
puts 'Oh success!'
