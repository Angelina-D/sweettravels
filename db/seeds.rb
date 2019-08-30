status = ['pending', 'accepted', 'cancel', 'complet']

content = ['Whaou, just Whaou!', 'I feel like my life has a meaning now',
'I can not remember what life was like before this', 'I will be obese but fuck it! YOLO']

# Review.destroy_all
Offer.destroy_all
Request.destroy_all
User.destroy_all
Sweet.destroy_all
Charity.destroy_all
puts 'Oh data destroyed'

############################ SWEET ##########################################

Sweet.create(
  name: 'Feijoa Candy',
  description: 'Mayceys lollies continue to be a Kiwi favourite',
  picture: 'https://www.shopnewzealand.co.nz/sites/default/files/styles/large/public/imported_images/feijoa_sweets.jpg?itok=45DsESd6',
  category:'Lollies',
  country: 'New Zealand',
  )

Sweet.create(
  name: 'Dragibus',
  description: 'France best kept secret',
  picture: 'https://24h-chrono.fr/127-large_default/haribo-dragibus.jpg',
  category: 'Candy',
  country: 'France',
  )

Sweet.create(
  name: 'Halal Fizzy Filled Hearts',
   description: "Perfect for Valentinesday (14th Feb) or Weddings",
   picture: 'https://images-na.ssl-images-amazon.com/images/I/41dHxPoTxfL._SX355_.jpg',
   category:'Gummibear',
   country: 'Spain',
   )

Sweet.create(
  name: 'Balas Sabor Coco',
  description: 'For coco cravings and birthday parties',
  picture: 'https://www.vicios-brasileiros.de/images/product_images/original_images/Bala-Coco-Brasilien.jpg',
  category: 'Bonbon',
  country: 'Brasil',
  )

Sweet.create(
  name: '이것들을 사랑해',
  description: 'Look at that promising cow on the package - its awesome!',
  picture: 'http://blog.snackfever.com/wp-content/uploads/2017/01/malang-cow-strawberry-e1484313141780.png',
  category: 'Bonbon',
  country: 'Korea',
  )
Sweet.create(
  name: 'Rossana',
  description: "Nuts in there! Watch your allergy",
  picture: "https://images-na.ssl-images-amazon.com/images/I/81%2B-vLir0UL._SL1500_.jpg",
  category: 'Choco',
  country: 'Italy',
  )
Sweet.create(
  name: 'Chocolate covered Bretzels',
  description: 'The best of all candies ever',
  picture: 'https://www.flipz.com/wp-content/uploads/2015/05/Dark-Chocolate-Flipz.jpg',
  category:'Choco',
  country: 'USA',
  )
puts "Sweets created!"

############################## USER ############################################
User.create(
  full_name: 'Annegret' ,
  photo: 'https://images.halloweencostumes.com/products/51294/1-1/childs-german-girl-costume-.jpg',
  email:'potatoe@hotmail.com',
  password: '123456'
  )
User.create(
  full_name: 'Kaylee' ,
  photo: 'https://avatars3.githubusercontent.com/u/50417340?v=4',
  email:'bootstrapisevil@hotmail.com',
  password: '123456'
  )

User.create(
  full_name: 'Max' ,
  photo: 'https://avatars2.githubusercontent.com/u/51816032?v=4',
  email:'cssisevil@hotmail.com',
  password: '123456'
  )

User.create(
  full_name: 'Jorge' ,
  photo: 'https://avatars1.githubusercontent.com/u/28198714?v=4',
  email:'jsisevil@hotmail.com',
  password: '123456'
  )

User.create(
  full_name: 'Yann' ,
  photo: 'https://d17fnq9dkz9hgj.cloudfront.net/uploads/2012/11/153546296-items-dangerous-pet-birds.jpg',
  email:'jsisevil@hotmail.com',
  password: '123456'
  )

User.create(
  full_name: 'Malina' ,
  photo: 'https://avatars2.githubusercontent.com/u/41272214?v=4',
  email:'jsisevil@hotmail.com',
  password: '123456'
  )

User.create(
  full_name: 'Angelo' ,
  photo: 'https://avatars1.githubusercontent.com/u/51519319?v=4',
  email:'jsisevil@hotmail.com',
  password: '123456'
  )

puts "Users created!"

####################### CHARITY ###############################

Charity.create(
  name: "NZ Cancer Research",
  cause: "Health",
  description: 'NZ Cancer Research, is an NZ organisation to build a society to help people with cancer through their diagnosis and healing.',
  picture: 'https://auckland-northland.cancernz.org.nz/assets/Uploads/cancer-society2x.gif'
  )

Charity.create(
  name: "action against hunger",
  cause: "Hunger",
  description: 'Action Against Hunger (or Action Contre La Faim (ACF) in French) is a global humanitarian organization which originated in France and is committed to ending world hunger. The organization helps malnourished children and provides communities with access to safe water and sustainable solutions to hunger. ',
  picture: 'https://armacad.info/images/2016/07/doctors-without-borders-k8t3CTUSaD1UHYV2pTmtzyK1Q78nN9zW.png'
  )

puts "Charity created!"
##################### REQUEST ########################
7.times do
  Request.create(
    description: 'Hello I would like a couple of sweet!',
    price_cents: rand(1000..2500),
    donation_cents: rand(500..2000),
    quantity: rand(1..5),
    charity_id: Charity.all.sample.id,
    user_id: User.all.sample.id,
    sweet_id: Sweet.all.sample.id,
    )
end
puts "Requests created!"

# ################################ OFFER ####################################
20.times do
  Offer.create(
    content: "Hey everyone, I'm going to the US for two weeks",
    end_date: "#{date = Time.at(rand * Time.now.to_i)}",
    start_date: "#{date-10.days}",
    user_id: User.all.sample.id,
    pick_up_location: 'berlin',
    status: rand(0..3),
    request_id: Request.all.sample.id,
    )
end

Offer.create(
  content: "Hey everyone, I'm going to France for two weeks I like to talk about my life blablabal ablablba labalbalbal balablba labab albalbalbal abalbalbalbalbalbal balbalbalbal balablab albalba lbal balablaba lbalbalbalabl abalba lbalal abalbabla",
  end_date: "#{date = Time.at(rand * Time.now.to_i)}",
  start_date: "#{date-10.days}",
  user_id: User.all.sample.id,
  pick_up_location: 'berlin' ,
  status: rand(0..3),
  request_id: Request.all.sample.id,
  )

Offer.create(
  content: "Hey everyone, I'm going to the UK for two weeks",
  end_date: "#{date = Time.at(rand * Time.now.to_i)}",
  start_date: "#{date-10.days}",
  user_id: User.all.sample.id,
  pick_up_location: 'berlin',
  status: rand(0..3),
  request_id: Request.all.sample.id,
  )

Offer.create(
  content: "Hey everyone, I'm going to Turkey for two weeks",
  end_date: "#{date = Time.at(rand * Time.now.to_i)}",
  start_date: "#{date-10.days}",
  user_id: User.all.sample.id,
  pick_up_location: 'berlin',
  status: rand(0..3),
  request_id: Request.all.sample.id,
  )

puts "Offers created!"
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


puts 'Oh success!'
