status = ['pending', 'accepted', 'cancel', 'complet']

content = ['Whaou, just Whaou!', 'I feel like my life has a meaning now',
'I can not remember what life was like before this', 'I will be obese but fuck it! YOLO']

# Review.destroy_all
Order.destroy_all
Offer.destroy_all
Request.destroy_all
User.destroy_all
Sweet.destroy_all
Charity.destroy_all
puts 'Oh data destroyed'

############################ SWEET ##########################################

sweet1 = Sweet.create(
  name: 'Feijoa Candy',
  description: 'Mayceys lollies continue to be a Kiwi favourite',
  picture: 'https://www.shopnewzealand.co.nz/sites/default/files/styles/large/public/imported_images/feijoa_sweets.jpg?itok=45DsESd6',
  category:'Lollies',
  country: 'New Zealand',
  )

sweet2 = Sweet.create(
  name: 'Dragibus',
  description: 'France best kept secret',
  picture: 'https://24h-chrono.fr/127-large_default/haribo-dragibus.jpg',
  category: 'Candy',
  country: 'France',
  )

sweet3 = Sweet.create(
  name: 'Halal Fizzy Filled Hearts',
   description: "Perfect for Valentinesday (14th Feb) or Weddings",
   picture: 'https://images-na.ssl-images-amazon.com/images/I/41dHxPoTxfL._SX355_.jpg',
   category:'Gummibear',
   country: 'Spain',
   )

sweet4 = Sweet.create(
  name: 'Balas Sabor Coco',
  description: 'For coco cravings and birthday parties',
  picture: 'https://www.vicios-brasileiros.de/images/product_images/original_images/Bala-Coco-Brasilien.jpg',
  category: 'Bonbon',
  country: 'Brasil',
  )

sweet5 = Sweet.create(
  name: '이것들을 사랑해',
  description: 'Look at that promising cow on the package - its awesome!',
  picture: 'http://blog.snackfever.com/wp-content/uploads/2017/01/malang-cow-strawberry-e1484313141780.png',
  category: 'Bonbon',
  country: 'Korea',
  )
sweet6 = Sweet.create!(
  name: 'Rossana',
  description: "Nuts in there! Watch your allergy",
  picture: "https://images-na.ssl-images-amazon.com/images/I/81%2B-vLir0UL._SL1500_.jpg",
  category: 'Choco',
  country: 'Italy',
  )
sweet7 = Sweet.create(
  name: 'Chocolate covered Bretzels',
  description: 'The best of all candies ever',
  picture: 'https://www.flipz.com/wp-content/uploads/2015/05/Dark-Chocolate-Flipz.jpg',
  category:'Choco',
  country: 'USA',
  )
sweet8 = Sweet.create(
  name: 'Prinzenrolle',
  description: 'Very awesome good quality 4.5/5 stars',
  picture: 'https://www.staples.de/content/images/product/5865718_1_xnl.jpg',
  category:'Choco',
  country: 'Germany',
  )
sweet9 = Sweet.create(
  name: 'Timtam',
  description: 'In Australia there is not only deadly animal but chocolat biscuit to die for too!',
  picture: 'http://www.arnotts.com/wp-content/uploads/2015/01/Tim-Tam-Chewy-Caramel.png',
  category:'Choco',
  country: 'Australia',
  )
sweet10 = Sweet.create(
  name: 'Carambar',
  description: 'The classic teeth breaker coming from France',
  picture: 'https://upload.wikimedia.org/wikipedia/commons/a/ad/Carambar_Caramel.jpg',
  category:'Teeth breaker',
  country: 'France',
  )
puts "Sweets created!"

############################## USER ############################################
user1 = User.create(
  full_name: 'Angie' ,
  photo: 'https://avatars3.githubusercontent.com/u/52400250?s=460&v=4',
  email:'potatoe@hotmail.com',
  password: '123456',
  city: 'Berlin',
  )
user2 = User.create(
  full_name: 'Kaylee' ,
  photo: 'https://avatars3.githubusercontent.com/u/50417340?v=4',
  email:'bootstrapisevil@hotmail.com',
  password: '123456',
  city: 'Berlin',
  )

user3 = User.create(
  full_name: 'Max' ,
  photo: 'https://avatars2.githubusercontent.com/u/51816032?v=4',
  email:'cssisevil@hotmail.com',
  password: '123456',
  city: 'Berlin',
  )

user4 = User.create(
  full_name: 'Jorge' ,
  photo: 'https://avatars1.githubusercontent.com/u/28198714?v=4',
  email:'jsisthebest@hotmail.com',
  password: '123456',
  city: 'Berlin',
  )

user5 = User.create(
  full_name: 'Yann' ,
  photo: 'https://avatars.githubusercontent.com/u/51452830?s=460&v=4',
  email:'jsisevil@hotmail.com',
  password: '123456',
  city: 'Berlin',
  )

user6 = User.create(
  full_name: 'Malina' ,
  photo: 'https://avatars2.githubusercontent.com/u/41272214?v=4',
  email:'rubyisevil@hotmail.com',
  password: '123456',
  city: 'Berlin',
  )

user7 = User.create!(
  full_name: 'Angelo' ,
  photo: 'https://avatars1.githubusercontent.com/u/51519319?v=4',
  email:'cssisawesome@hotmail.com',
  password: '123456',
  city: 'Berlin',
  )

user8 = User.create(
  full_name: 'Grant' ,
  photo: 'https://avatars2.githubusercontent.com/u/48766845?s=460&v=4',
  email:'timtam@hotmail.com',
  password: '123456',
  city: 'Melbourne',
  )
user9 = User.create(
  full_name: 'Amelle' ,
  photo: 'https://avatars2.githubusercontent.com/u/49689058?s=460&v=4',
  email:'memelle@hotmail.com',
  password: '123456',
  city: 'Berlin',
  )
user10 = User.create(
  full_name: 'Victor' ,
  photo: 'https://scontent-amt2-1.xx.fbcdn.net/v/t1.0-9/67557545_929840497354966_844013081422987264_o.jpg?_nc_cat=100&_nc_oc=AQm63oEcvg4oc2hmqGTzUAGWBl3X2JDhtG2kfLL6UpFnpGwS7FA_2s-Ny-kkXR5bFQ8&_nc_ht=scontent-amt2-1.xx&oh=8b0fc5be17c4adac120de056b2c48b46&oe=5E058913',
  email:'redcabage@hotmail.com',
  password: '123456',
  city: 'Berlin',
  )

puts "Users created!"

####################### CHARITY ###############################

Charity.create(
  name: "Action Against Hunger",
  cause: "Education",
  description: "Children are the faces of the future, and their education is one of the most critical factors to help a community rise above poverty. Your gift of education will not only help a child but her entire village.",
  picture: 'https://www.channelstv.com/wp-content/uploads/2019/07/ACF-3.jpg'
  )

Charity.create(
  name: "Doctor without Borders",
  cause: "Hunger",
  description: "Action Against Hunger (or Action Contre La Faim (ACF) in French) is a global humanitarian organization which originated in France and is committed to ending world hunger. The organization helps malnourished children and provides communities with access to safe water and sustainable solutions to hunger.",
  picture: 'https://armacad.info/images/2016/07/doctors-without-borders-k8t3CTUSaD1UHYV2pTmtzyK1Q78nN9zW.png'
  )
Charity.create(
  name: "World diabetes foundation",
  cause: "diabetes",
  description: "Fighting diabetes worldwide. Our vision is to alleviate suffering related to diabetes and its complications among those least able to withstand the burden",
  picture: 'http://www.hereweareglobal.com/wp-content/uploads/2018/06/WDF-logo-standard.jpg'
  )

Charity.create(
  name: "Rise Against Hunger",
  cause: "Hunger",
  description: "Rise Against Hunger is an international hunger relief non-profit organization that coordinates the packaging and distribution of food and other life-changing aid to people in developing nations",
  picture: 'https://weag.church/wp-content/uploads/2019/03/rise-against-hunger.png'
  )
Charity.create(
  name: "UNICEF",
  cause: "Education",
  description: "The United Nations Children's Fund, originally known as the United Nations International Children's Emergency Fund, was created by the United Nations General Assembly on 11 December 1946, to provide emergency food and healthcare to children and mothers in countries that had been devastated by World War II",
  picture: 'http://www.developmentchannel.org/wp-content/uploads/2018/10/UNICEF-Logo.jpg'
  )

Charity.create(
  name: "Green Peace",
  cause: "Environment",
  description: "Greenpeace is a non-governmental environmental organization with offices in over 39 countries and an international coordinating body in Amsterdam, the Netherlands. Greenpeace was founded in 1971 by Irving Stowe and Dorothy Stowe, Canadian and US ex-pat environmental activists",
  picture: 'https://www.greenpeace.org/international/wp-content/themes/planet4-master-theme/images/Greenpeace-logo.png'
  )

puts "Charity created!"
##################### REQUEST ########################
  Request.create(
    description: 'I am Craving Feijoa!',
    price_cents: rand(1000..2500),
    donation_cents: rand(500..2000),
    quantity: rand(1..5),
    charity_id: Charity.all.sample.id,
    user: user3,
    sweet: sweet1,
    )

Request.create(
    description: 'Would love to have these right now! 고맙습니다',
    price_cents: rand(1000..2500),
    donation_cents: rand(500..2000),
    quantity: rand(1..5),
    charity_id: Charity.all.sample.id,
    user: user2,
    sweet: sweet5,
    )

Request.create(
    description: 'Hola! Could someone bring these 🥰',
    price_cents: rand(1000..2500),
    donation_cents: rand(500..2000),
    quantity: rand(1..5),
    charity_id: Charity.all.sample.id,
    user: user4,
    sweet: sweet3,
    )

Request.create(
    description: 'I am only here because of parrots & Dragibus',
    price_cents: rand(1000..2500),
    donation_cents: rand(500..2000),
    quantity: rand(1..5),
    charity_id: Charity.all.sample.id,
    user: user5,
    sweet: sweet2,
    )

Request.create(
    description: 'My all time Favorite - send help pls',
    price_cents: rand(1000..2500),
    donation_cents: rand(500..2000),
    quantity: rand(1..5),
    charity_id: Charity.all.sample.id,
    user: user6,
    sweet: sweet7,
    )

Request.create(
    description: 'My all time Favorite - send help pls',
    price_cents: rand(1000..2500),
    donation_cents: rand(500..2000),
    quantity: rand(1..5),
    charity_id: Charity.all.sample.id,
    user: user8,
    sweet: sweet9,
    )

Request.create(
    description: 'My all time Favorite - send help pls',
    price_cents: rand(1000..2500),
    donation_cents: rand(500..2000),
    quantity: rand(1..5),
    charity_id: Charity.all.sample.id,
    user: user7,
    sweet: sweet6,
    )

Request.create!(
    description: 'My all time Favorite - send help pls',
    price_cents: rand(1000..2500),
    donation_cents: rand(500..2000),
    quantity: rand(1..5),
    charity_id: Charity.all.sample.id,
    user: user9,
    sweet: sweet8,
    )
Request.create!(
    description: 'My all time Favorite - send help pls',
    price_cents: rand(1000..2500),
    donation_cents: rand(500..2000),
    quantity: rand(1..5),
    charity_id: Charity.all.sample.id,
    user: user10,
    sweet: sweet10,
    )
puts "Requests created!"

# ################################ OFFER ####################################
# 20.times do
#   Offer.create(
#     content: "Hey everyone, I'm going to the US for two weeks",
#     end_date: "#{date = Time.at(rand * Time.now.to_i)}",
#     start_date: "#{date-10.days}",
#     user: User.all.sample,
#     pick_up_location: 'berlin',
#     status: rand(0..4),
#     request: Request.all.sample,
#     )
# end

30.times do
  Offer.create(
    content: "Hey everyone, I'm going to France for two weeks I like to talk about my life blablabal ablablba labalbalbal balablba ",
    end_date: "#{date = Time.at(rand * Time.now.to_i)}",
    start_date: "#{date-10.days}",
    user: User.all.sample,
    pick_up_location: 'berlin' ,
    status: 1,
    request: Request.all.sample,
    )
end

Offer.create(
  content: "Hey everyone, I'm going to the UK for two weeks",
  end_date: "#{date = Time.at(rand * Time.now.to_i)}",
  start_date: "#{date-10.days}",
  user: User.all.sample,
  pick_up_location: 'berlin',
  status: rand(0..4),
  request: Request.all.sample,
  )

Offer.create(
  content: "Hey everyone, I'm going to Turkey for two weeks",
  end_date: "#{date = Time.at(rand * Time.now.to_i)}",
  start_date: "#{date-10.days}",
  user: User.all.sample,
  pick_up_location: 'berlin',
  status: rand(0..4),
  request: Request.all.sample,
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
