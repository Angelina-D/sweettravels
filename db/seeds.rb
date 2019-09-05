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

pineap = Sweet.create(
  name: 'Pineapple lumps',
  description: 'Mayceys lollies continue to be a Kiwi favourite',
  picture: 'https://www.bigw.com.au/medias/sys_master/images/images/hf4/h6e/11848954707998.jpg',
  category:'Lollies',
  country: '🇳🇿 New Zealand',
  )

dragibus = Sweet.create(
  name: 'Dragibus',
  description: 'France best kept secret',
  picture: 'https://24h-chrono.fr/127-large_default/haribo-dragibus.jpg',
  category: 'Candy',
  country: '🇫🇷 France',
  )

pictolin = Sweet.create(
  name: 'Pictolin',
   description: "Perfect for Valentinesday (14th Feb) or Weddings",
   picture: 'https://taw9eelcdn.cachefly.net/media/catalog/product/cache/1/image/519x/caf7b51f4c4f72629c8e66ac0d790077/1/_/1_780_107.jpg',
   category:'Gummibear',
   country: '🇪🇸 Spain',
   )

balas = Sweet.create(
  name: 'Balas Sabor Coco',
  description: 'For coco cravings and birthday parties',
  picture: 'https://www.vicios-brasileiros.de/images/product_images/original_images/Bala-Coco-Brasilien.jpg',
  category: 'Bonbon',
  country: '🇧🇷 Brazil',
  )

koreanShit = Sweet.create(
  name: '이것들을 사랑해',
  description: 'Look at that promising cow on the package - its awesome!',
  picture: 'http://blog.snackfever.com/wp-content/uploads/2017/01/malang-cow-strawberry-e1484313141780.png',
  category: 'Bonbon',
  country: '🇰🇷 Korea',
  )
rossana = Sweet.create!(
  name: 'Rossana',
  description: "Nuts in there! Watch your allergy",
  picture: "https://images-na.ssl-images-amazon.com/images/I/81%2B-vLir0UL._SL1500_.jpg",
  category: 'Choco',
  country: ' 🇮🇹 Italy',
  )
junior_mint = Sweet.create(
  name: 'Junior Mints',
  description: 'The best of all candies ever',
  picture: 'https://images-na.ssl-images-amazon.com/images/I/818exYu5sbL._SL1500_.jpg',
  category:'Choco',
  country: '🇺🇸 USA',
  )
trolli = Sweet.create(
  name: 'Trolli',
  description: 'Very awesome good quality 4.5/5 stars',
  picture: 'https://images-na.ssl-images-amazon.com/images/I/91Kad-jepLL._SL1500_.jpg',
  category:'Pure Insanity',
  country: '🇩🇪 Germany',
  )
timtam = Sweet.create(
  name: 'Timtam',
  description: 'Oz has deadly animal and biscuit to die for too!',
  picture: 'https://images-na.ssl-images-amazon.com/images/I/514RuYgRv7L.jpg',
  category:'Choco',
  country: '🇦🇺 Australia',
  )
carambar = Sweet.create(
  name: 'Carambar',
  description: 'The classic teeth breaker coming from France',
  picture: 'https://static.weezbe.com/planetbonbons/Images/products/p_244G_180120181412.jpg',
  category:'Teeth breaker',
  country: '🇫🇷 France',
  )
cosette = Sweet.create(
  name: 'Cocosette',
  description: 'Hey coco! This is Venezula with a punch!',
  picture: 'https://images-na.ssl-images-amazon.com/images/I/51eAKP6xhHL._SX355_.jpg',
  category:'Teeth breaker',
  country: '🇻🇪 Venezuela',
  )
prince_picolo = Sweet.create(
  name: 'Prince Polo',
  description: 'The classic teeth breaker coming from Poland',
  picture: 'https://images-nitrosell-com.akamaized.net/product_images/23/5695/princepoloclassic.jpg',
  category:'Teeth breaker',
  country: '🇵🇱 Poland',
  )
twinkies = Sweet.create(
  name: 'Twinkies',
  description: 'Very nasty american statment!',
  picture: 'https://images-na.ssl-images-amazon.com/images/I/91VKsgpRZrL._SL1500_.jpg',
  category:'MERICAAAAA!',
  country: '🇺🇸 USA',
  )



puts "Sweets created!"

############################## USER ############################################
angie = User.create(
  full_name: 'Angie' ,
  photo: 'https://avatars3.githubusercontent.com/u/52400250?s=460&v=4',
  email:'potatoe@hotmail.com',
  password: '123456',
  city: 'Berlin',
  )
kaylee = User.create(
  full_name: 'Kaylee' ,
  photo: 'https://avatars3.githubusercontent.com/u/50417340?v=4',
  email:'bootstrapisevil@hotmail.com',
  password: '123456',
  city: 'Berlin',
  )

max = User.create(
  full_name: 'Max' ,
  photo: 'https://avatars2.githubusercontent.com/u/51816032?v=4',
  email:'cssisevil@hotmail.com',
  password: '123456',
  city: 'Berlin',
  )

jorge = User.create(
  full_name: 'Jorge' ,
  photo: 'https://avatars1.githubusercontent.com/u/28198714?v=4',
  email:'jsisthebest@hotmail.com',
  password: '123456',
  city: 'Berlin',
  )

yann = User.create(
  full_name: 'Yann' ,
  photo: 'https://avatars.githubusercontent.com/u/51452830?s=460&v=4',
  email:'jsisevil@hotmail.com',
  password: '123456',
  city: 'Berlin',
  )

malina = User.create(
  full_name: 'Malina' ,
  photo: 'https://avatars2.githubusercontent.com/u/41272214?v=4',
  email:'rubyisevil@hotmail.com',
  password: '123456',
  city: 'Berlin',
  )

angelo = User.create!(
  full_name: 'Angelo' ,
  photo: 'https://avatars1.githubusercontent.com/u/51519319?v=4',
  email:'cssisawesome@hotmail.com',
  password: '123456',
  city: 'Berlin',
  )

grant = User.create(
  full_name: 'Grant' ,
  photo: 'https://avatars2.githubusercontent.com/u/48766845?s=460&v=4',
  email:'timtam@hotmail.com',
  password: '123456',
  city: 'Melbourne',
  )
amelle = User.create(
  full_name: 'Amelle' ,
  photo: 'https://avatars2.githubusercontent.com/u/49689058?s=460&v=4',
  email:'memelle@hotmail.com',
  password: '123456',
  city: 'Berlin',
  )
victor = User.create(
  full_name: 'Victor' ,
  photo: 'https://scontent-amt2-1.xx.fbcdn.net/v/t1.0-9/67557545_929840497354966_844013081422987264_o.jpg?_nc_cat=100&_nc_oc=AQm63oEcvg4oc2hmqGTzUAGWBl3X2JDhtG2kfLL6UpFnpGwS7FA_2s-Ny-kkXR5bFQ8&_nc_ht=scontent-amt2-1.xx&oh=8b0fc5be17c4adac120de056b2c48b46&oe=5E058913',
  email:'redcabage@hotmail.com',
  password: '123456',
  city: 'Berlin',
  )
toni = User.create(
  full_name: 'Antoinette' ,
  photo: 'https://avatars2.githubusercontent.com/u/31135213?s=460&v=4',
  email:'antoinette@hotmail.com',
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
Request.create!(
    description: 'I want those bad boy from France, they are ROYAL!',
    price_cents: rand(1000..2500),
    donation_cents: rand(500..2000),
    quantity: rand(1..5),
    charity_id: Charity.all.sample.id,
    user: toni,
    sweet: dragibus,
    )

Request.create(
    description: 'I need my timtam!',
    price_cents: rand(1000..2500),
    donation_cents: rand(500..2000),
    quantity: rand(1..5),
    charity_id: Charity.all.sample.id,
    user: grant,
    sweet: timtam,
    )
  Request.create(
    description: 'I am Craving Feijoa!',
    price_cents: rand(1000..2500),
    donation_cents: rand(500..2000),
    quantity: rand(1..5),
    charity_id: Charity.all.sample.id,
    user: max,
    sweet: pineap,
    )

Request.create(
    description: 'Would love to have these right now! 고맙습니다',
    price_cents: rand(1000..2500),
    donation_cents: rand(500..2000),
    quantity: rand(1..5),
    charity_id: Charity.all.sample.id,
    user: kaylee,
    sweet: koreanShit,
    )

Request.create(
    description: 'Hola! Could someone bring these 🥰',
    price_cents: rand(1000..2500),
    donation_cents: rand(500..2000),
    quantity: rand(1..5),
    charity_id: Charity.all.sample.id,
    user: jorge,
    sweet: pictolin,
    )

Request.create(
    description: 'I NEED MY DRAGIBUS AAARGRRRGRGRGGGG!!!!',
    price_cents: rand(1000..2500),
    donation_cents: rand(500..2000),
    quantity: rand(1..5),
    charity_id: Charity.all.sample.id,
    user: yann,
    sweet: dragibus,
    )

Request.create(
    description: 'My all time Favorite - send help pls',
    price_cents: rand(1000..2500),
    donation_cents: rand(500..2000),
    quantity: rand(1..5),
    charity_id: Charity.all.sample.id,
    user: amelle,
    sweet: junior_mint,
    )

Request.create(
    description: 'My all time Favorite - send help pls',
    price_cents: rand(1000..2500),
    donation_cents: rand(500..2000),
    quantity: rand(1..5),
    charity_id: Charity.all.sample.id,
    user: angelo,
    sweet: rossana,
    )

Request.create!(
    description: 'My all time Favorite - send help pls',
    price_cents: rand(1000..2500),
    donation_cents: rand(500..2000),
    quantity: rand(1..5),
    charity_id: Charity.all.sample.id,
    user: amelle,
    sweet: trolli,
    )
Request.create!(
    description: 'My all time Favorite - send help pls',
    price_cents: rand(1000..2500),
    donation_cents: rand(500..2000),
    quantity: rand(1..5),
    charity_id: Charity.all.sample.id,
    user: victor,
    sweet: balas,
    )
Request.create!(
    description: 'My all time Favorite - send help pls',
    price_cents: rand(1000..2500),
    donation_cents: rand(500..2000),
    quantity: rand(1..5),
    charity_id: Charity.all.sample.id,
    user: angie,
    sweet: carambar,
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
  userer = User.all.sample
  Offer.create(
    content: "Hey, I can bring those bad boy back, no prob! ",
    end_date: "#{date = Time.at(rand * Time.now.to_i)}",
    start_date: "#{date-10.days}",
    user: userer,
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
