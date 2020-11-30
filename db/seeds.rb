require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning up db...'
User.destroy_all
Category.destroy_all
Business.destroy_all

puts 'Seeding users...'

user1 = User.create!(
  email: "trinity@trinity.com",
  first_name: "Trinity",
  last_name: "Strut",
  password: "123456",
  bio: "Web developer and mom of two",
  address: "Auguststraße 53, 10119 Berlin",
  business_owner: false
  )
user2 = User.create!(
  email: "ben@ben.com",
  first_name: "Ben",
  last_name: "Gordon",
  password: "123456",
  bio: "Coffee lover",
  address: "Joachimstraße 11, 10119 Berlin",
  business_owner: true
  )
user3 = User.create!(
  email: "yoko@yoko.com",
  first_name: "Yoko",
  last_name: "Kasai",
  password: "123456",
  bio: "I love traveling ;)",
  address: "Sophienstraße 21, 10178 Berlin",
  business_owner: true
  )
user4 = User.create!(
  email: "lukas@lukas.com",
  first_name: "Lukas",
  last_name: "Hortsmann",
  password: "123456",
  bio: "Looking to find new friends",
  address: "Krausnickstraße 10, 10115 Berlin",
  business_owner: true
  )
user5 = User.create!(
  email: "euan@euan.com",
  first_name: "Euan",
  last_name: "Gillespie-Taylor",
  password: "123456",
  bio: "Just moved into the neighbourhood!",
  address: "Große Hamburger Str. 21, 10115 Berlin",
  business_owner: true
  )

puts 'Seeding categories...'

category1 = Category.create!(name: "Arts & Culture")
category2 = Category.create!(name: "Education")
category3 = Category.create!(name: "Food & Dining")
category4 = Category.create!(name: "Health & Medicine")
category5 = Category.create!(name: "Home & Garden")
category6 = Category.create!(name: "Personal Care")
category7 = Category.create!(name: "Pets")
category8 = Category.create!(name: "Retail")
category9 = Category.create!(name: "Services")

puts "Seeding businesses..."

business1 = Business.create!(
  user: user2,
  category: category4,
  name: "ZahnCentrum",
  short_bio: "Friendly local dentist",
  long_bio: "At our facility you will find all dental specialities combined in one location – from prophylaxis to paediatric dentistry as well as oral surgery. Our dedicated team will provide you with comprehensive and attentive care. We will gladly take plenty of extra time for patients with dental anxiety and for our young patients. Arrange your next dental appointment with us! ",
  owner_name: "Oleg Schenk",
  owner_bio: "I'm a implantologist and a expert in the transplantation of the body's own bone to create an optimal implant site (bone augmentation). On my free time I enjoy to travelling with my family and ride my bike. ",
  address: "Linienstraße 87, 10119 Berlin",
  telephone: "+49-123-4567-8901",
  email: "oleg@oleg.com",
  opening_hours: nil,
  accept_cards: true,
  website_url: "www.zahn-c.com",
    )
business2 = Business.create!(
  user: user3,
  category: category6,
  name: "Highkick e.V.",
  short_bio: "Gym specializing in women's self-defense",
  long_bio: "Highkick: is a self defence and fitness gym for women empowerment.  All ages welcome. Male and female instructors. Private sessions available and pay as you go classes. Come and try us!

Follow us:
facebook/Lowkick
instagram/lowkick_gym",
  owner_name: "Claudia Huth",
  owner_bio: "I am an accredited Weapons Instructor and Self Defence Instructor, with 20 years training experience in the Martial Arts.
    I launched Lowkick in 2010, to pass on my knowledge to women warriors! I will be your instructor for the beginner courses offered at Lowkick:)",
  address: "Rosenthaler Str. 61, 10119 Berlin",
  telephone: "+49-123-4567-8901",
  email: "claudia@claudia.com",
  opening_hours: nil,
  accept_cards: true,
  website_url: "www.highkick.com",
    )
business3 = Business.create!(
  user: user4,
  category: category9,
  name: "Eyman's",
  short_bio: "Cheap, fast, quality shoe repair",
  long_bio: "A family owned shoe repairshop with friendly staff. We  rebuild, remodel, and repair boots and shoes. Offering services for mending luggage, handbags, and sports equipment, such as tents, saddles, and golf bags.",
  owner_name: "Eymen Kaya",
  owner_bio: "I came to berlin 30 years ago. My father was a shoe repair man, and I followed in his footsteps. Now my son helps out in the store. I pride myself in skill and quality, and of course price. Our store is small and busy, but I'm always up for a tea and small chat with anyone that stops by. ",
  address: "Torstraße 159, 10115 Berlin",
  telephone: "+49-123-4567-8901",
  email: "eyman@eyman.com",
  opening_hours: nil,
  accept_cards: true,
  website_url: "www.eymans.de",
    )
business4 = Business.create!(
  user: user5,
  category: category6,
  name: "Apple Nails",
  short_bio: "Local Nail Bar experience so far from normal",
  long_bio: "You will be warmly welcomed by Apple and Kevin in the modern salon. The duo will advise you in detail and take care of your hands and feet, be it a classic manicure and pedicure, the scratch-resistant Shellac or a gel modeling with the most beautiful designs - the regulars crowding the salon prove that the two of them are masters of their profession. Great quality at fair prices. What are you waiting for? Come by and experience for yourself what beautiful nails can do.
      Follow us:
      facebook/apple_nails
      instagram/apple_nails",
  owner_name: "Apple Nguyen",
  owner_bio: "Hi I'm Apple. I'm a manicurist or nail technician with 10 years of experience in the field. I'm a Berlin native and opened my salon with my husband Kevin in 2016. We welcome both men and women who want to take a break and feel beautiful. Bookmark our profile and watch out for special offers!",
  address: "Gipsstraße 3, 10119 Berlin",
  telephone: "+49-123-4567-8901",
  email: "apple@nails.com",
  opening_hours: nil,
  accept_cards: true,
  website_url: "www.apple-nails.de",
    )
business5 = Business.create!(
  user: user2,
  category: category6,
  name: "Alley Barber Shop",
  short_bio: "Authentic Barber experience",
  long_bio: "A family-friendly burger shop, serving burgers, hot dogs, fries, wraps and salads and of course, french fires in a 90's themed atmosphere. We are passionate about burgers, using the best ingredients, working directly with our meat producers and bun producers to to create our unique steak patties freshly baked buns. We have seating as well as take-away, with meat, vegetarian and vegan offerings on the menu.",
  owner_name: "Deniz ",
  owner_bio: "I feel most confident when I have my scissors in my hands and doing work. I've had my barbershop now for 20 years, and I still love my job and appreciate my customers for all the support they have given me throughout the years. ",
  address: "Mulackstraße 33, 10119 Berlin",
  telephone: "+49-123-4567-8901",
  email: "alley@barber.com",
  opening_hours: nil,
  accept_cards: true,
  website_url: "www.alley-barber-shop.de",
    )
business6 = Business.create!(
  user: user3,
  category: category3,
  name: "Ben's Burgers",
  short_bio: "Best craft proper burger in Berlin",
  long_bio: "Best bar for chilled out drinks with friends. Try our original cocktails, as you enjoy the live music, shabby-chic decor and prime people-watching location. The the bar staff know their Old Fashions from their Manhattans. ",
  owner_name: "Ben Burger man",
  owner_bio: "I came to Berlin in 2013. I'm Inspired by the American style of food and diners, and I didn’t wait long to open my first Burger restaurant in Berlin as I arrived. My mission is providing quality food. We've been warmly welcomed by everyone in the neighbourhood, and I realise everyday how fantastic it to make burgers for everyone. I'm usually in the open kitchen with the patties, come by!",
  address: "Rosenthaler Str. 68, 10119 Berlin",
  telephone: "+49-123-4567-8901",
  email: "ben@burger.com",
  opening_hours: nil,
  accept_cards: true,
  website_url: "www.ben-burger.com",
    )
business7 = Business.create!(
  user: user4,
  category: category3,
  name: "Bierhaus Urban",
  short_bio: "Cosy boozer, great atmosphere, friendly staff",
  long_bio: "Best bar for chilled out drinks with friends. Try our original cocktails, as you enjoy the live music, shabby-chic decor and prime people-watching location. The the bar staff know their Old Fashions from their Manhattans. ",
  owner_name: "Marcus Kotz",
  owner_bio: "I'm original from Poland, and have worked in the restaurant industry since I was 16. I'm a Hall of Fame Inductee by Tales of the cocktail. If you don't know what you want, just descrbe your mood. Waiting for your visit!",
  address: "Choriner Str. 76, 10119 Berlin",
  telephone: "+49-123-4567-8901",
  email: "bier@urban.com",
  opening_hours: nil,
  accept_cards: true,
  website_url: "www.bierplatz.de",
    )
business8 = Business.create!(
  user: user5,
  category: category3,
  name: "Café Louis",
  short_bio: "Italian Coffee and Cakes",
  long_bio: "Cafè is run by a joyful Italian couple, Louis and his wife Nora. We offer authentic well-brewed Italian cappuccino, and our cafe is spacious - an ideal place to chatt and hang out with your friends, or to get some work done on your laptop and fill your belly with homemade sweets and sadwiches. ",
  owner_name: "Louis",
  owner_bio: "We love our neighbourhood. We seem to attract a very eclectic crow. and we love talking to each and everyone.  Daily conversations can be incredibly fascinating, and it’s exhilarating to think it all starts off with a coffee.",
  address: "Zehdenicker Str. 17, 10119 Berlin",
  telephone: "+49-123-4567-8901",
  email: "cafe@louis.com",
  opening_hours: nil,
  accept_cards: true,
  website_url: "www.cafelouis.de",
    )
business9 = Business.create!(
  user: user2,
  category: category3,
  name: "Jon's",
  short_bio: "French & German Bakery",
  long_bio: "The bakery was a converted apotheke, rustic on the outside and perfection on the inside. The breads were all local grain and we pride ourselves in variation, from bread, rolls, cookies, pies, pastries, and muffins, We open early at 7am everyday. Come and grab your croissants and danish on your way to work!",
  owner_name: "Jon",
  owner_bio: "I trained in Pastry & Bakery in both France and Germany and opened my own store this year. The neighbourhood has given me a very warm welcome.  What is your favorite bread or pastry? We are always excited to hear customer requests and add new special/seasonal offers!",
  address: "Auguststraße 24, 10117 Berlin",
  telephone: "+49-123-4567-8901",
  email: "jon@bread.com",
  opening_hours: nil,
  accept_cards: true,
  website_url: "www.jons.com",
    )
business10 = Business.create!(
  user: user3,
  category: category1,
  name: "Schoenhausser Art Gallery",
  short_bio: "Small independent gallery, specializing in 1960's Berlin pop-art",
  long_bio: "First established in the late 1960's, this charming gallery has changed hands 3 times but has always retained its commitment to exhibiting works that challenge and mirror the evolution of Berlin",
  owner_name: "Marcel Bruhr",
  owner_bio: "Originally from Dusseldorf, and a proud Berliner since 1994, I have been curator of the gallery for the past 20 years. ",
  address: "Kastanienallee 59, 10119 Berlin",
  telephone: "+49-123-4567-8901",
  email: "shoen@art.com",
  opening_hours: nil,
  accept_cards: true,
  website_url: "www.schoenhausserart.de",
    )
business11 = Business.create!(
  user: user4,
  category: category8,
  name: "Nicer Living",
  short_bio: "Fashion for the conscious shopper",
  long_bio: "Established by a passion lover in the late 2010s. Focused on on fashionable Yuppies with a lot of money",
  owner_name: "Helena Bonstat",
  owner_bio: "Born and raised in Berlin. I have been working the fashion industry for as long as I can think of, true passion makes the best professionals!",
  address: "Brunnenstraße 164, 10119 Berlin",
  telephone: "+49-123-4567-8901",
  email: "nicer@living.com",
  opening_hours: nil,
  accept_cards: true,
  website_url: "www.nicer-living.de",
    )
business12 = Business.create!(
  user: user5,
  category: category1,
  name: "Rückpassage Cinema",
  short_bio: "Community-owned cinema with sofa's",
  long_bio: "At Rückpassage, we pride ourselves on the cinema experience and the belief that cinema is best with comfort and a beer, without breaking the bank. ",
  owner_name: "The Rückpassage community",
  owner_bio: "Owned by the community around us, we want to bring neighbours together with family and seniors' nights ",
  address: "Bergstraße 22, 10115 Berlin",
  telephone: "+49-123-4567-8901",
  email: "ruckpassage@cinema.com",
  opening_hours: nil,
  accept_cards: true,
  website_url: "www.ruckpassagecinema.de",
    )
business13 = Business.create!(
  user: user2,
  category: category5,
  name: "Candle Corner",
  short_bio: "Independent shop focused on candle crafting",
  long_bio: "We are craftsmen that really love candles. Any candle you can imagine is possible with us!",
  owner_name: "The Rückpassage community",
  owner_bio: "Born in a small village in the south of Germany, Heinz learned the carft of making candles from his father and kept onto it ever since",
  address: "Ackerstraße 16, 10115 Berlin",
  telephone: "+49-123-4567-8901",
  email: "candle@corner.com",
  opening_hours: nil,
  accept_cards: true,
  website_url: "www.candlecorner.de",
    )
business14 = Business.create!(
  user: user3,
  category: category5,
  name: "Neighborhood Greens",
  short_bio: "Providing the freshest and healthiest vegetables",
  long_bio: "Established in 1980 witht the intend to provide the neighborhood with the best regional vegetables Family-owned shop to puts its focus on ",
  owner_name: "Gabi Schmidt",
  owner_bio: "Born in Berlin, I have worked as a vegetable seller all my life and cannot imagine doing anything else",
  address: "Brunnenstraße 11, 10119 Berlin",
  telephone: "+49-123-4567-8901",
  email: "greens@neighborhood.com",
  opening_hours: nil,
  accept_cards: true,
  website_url: "www.greenerfood.com",
    )

puts "Seeding posts..."

post1 = Post.create!(
  content: "Think it has been too long since your last checkup? Give us a call and arrange your next appointment",
  business_id: business1.id,
)
post2 = Post.create!(
  content: "We all know how much sugar our kids can get through on Halloween, so for all of November we are offering half-price checkups for your little ones",
  business_id: business1.id,
)
post3 = Post.create!(
  content: "Don’t wait until the new year to get yourself into shape! Come and drop by for one of our free beginners classes. No experience needed, just positivity and a can-do attitude",
  business_id: business2.id,
)
post4 = Post.create!(
  content: "Meet our newest instructor, Louise! Louise joins us from the national judo association and brings with her a wealth of experience in meditation, yoga and, of course, judo",
  business_id: business2.id,
)
post5 = Post.create!(
  content: "Wondering what to get for your significant other this Christmas? We are offering half-price discounts across a range of memberships so why not change someone's life this year, not just their sock collection",
  business_id: business2.id,
)
post31 = Post.create!(
  content: "Don’t let winter get to your favourite pair of shoes! Drop them off with us and let them get the care and attention they deserve",
  business_id: business3.id,
)
post32 = Post.create!(
  content: "We are so much more than just shoes! We offer quick repairs on bags, watches, luggage, even golf bags and more",
  business_id: business3.id,
)
post6 = Post.create!(
  content: "Got yourself the first post-lockdown date? Come see us and make sure your nails are looking their best for the big day",
  business_id: business4.id,
)
post7 = Post.create!(
  content: "We all miss spending time with our closest friends, so why not buy a shared manicure and treat yourselves to an afternoon of pampering?",
  business_id: business4.id,
)
post8 = Post.create!(
  content: "Has your man-gone from hipster to hippie? Lets get you looking your best for that first big night out!",
  business_id: business5.id,
)
post9 = Post.create!(
  content: "No-shave November changed your life? Want to keep that chin fuzz looking fine? Our team can help keep your facial fur at its best",
  business_id: business5.id,
)
post10 = Post.create!(
    content: "Hair cuts shouldn’t be a chore; all of ours come with a complimentary beer. So what are you waiting for?",
  business_id: business5.id,
)
post11 = Post.create!(
  content: "Presenting the newest addition to our menu, the Thanksgiving burger. Treat yourself to true American gluttony. Don’t wait, it’ll only be here for the next week!",
  business_id: business6.id,
)
post12 = Post.create!(
  content: "We won’t let the newest regulations stop us from bringing you the finest in burger brilliance. Order online for free delivery and even a free drink if you don’t mind collecting it yourself!",
  business_id: business6.id,
)
post13 = Post.create!(
  content: "We are committed to reducing our environmental impact so we are proud to introduce you to our new spicy vegan burger, the Temple of Seitan",
  business_id: business6.id,
)
post14 = Post.create!(
  content: "As the cold nights draw-in, come fight the winter chill with us!",
  business_id: business7.id,
)
post15 = Post.create!(
  content: "Cabin fever setting in after the fifth straight day of working from home? Come join us for our famous happy hour! All beers on tap are half-price, monday to thursday,  5-7! You know it makes sense!!",
  business_id: business7.id,
)
post16 = Post.create!(
  content: "Eat-in or takeout? You choose! It’s never been easier to find the finest food France has to offer",
  business_id: business8.id,
)
post17 = Post.create!(
  content: "A new lockdown doesn’t mean you must indulge less? Order online and we will have the richest Beef Bourguignon ready when you are",
  business_id: business8.id,
)
post18 = Post.create!(
  content: "Our bread is baked fresh each morning so start your morning with the delicious taste of a warm croissant",
  business_id: business9.id,
)
post19 = Post.create!(
  content: "We know mornings are a little harder this time of year, so pick up a half-price coffee between 7 and 8 everyday",
  business_id: business9.id,
)
post20 = Post.create!(
  content: "Community alert! All our bread is half-price from now until we close for the day!",
  business_id: business9.id,
)
post21 = Post.create!(
  content: "Want to get your kids away from the tv this weekend? Come to the Schoenhausser this Saturday when kids go free!",
  business_id: business10.id,
)
post22 = Post.create!(
  content: "We are proud to present our newest exhibition, featuring the up and coming artist Ben Gordon. His sculptures offer a sardonic and, often, witty rebuke of modern America",
  business_id: business10.id,
)
post23 = Post.create!(
  content: "Fashion shouldn’t hurt the world around us. That’s why we are introducing our newest bamboo clothing range",
  business_id: business11.id,
)
post24 = Post.create!(
  content: "All of our items are sustainably sourced so you can look your best, guilt-free!",
  business_id: business11.id,
)
post25 = Post.create!(
  content: "Don’t miss the newest mind-bending thriller from Sir Christopher Nolan! Weekday screenings of his newest masterpiece from only €5",
  business_id: business12.id,
)
post26 = Post.create!(
  content: "We believe that the best films should be enjoyed with comfort and indulgence, that’s why all of our screens have sofas and a bar to make every viewing memorable",
  business_id: business12.id,
)
post27 = Post.create!(
  content: "Nothing says Valentines and romance like our Rose leaf candle. Make your night a little more special",
  business_id: business13.id,
)
post28 = Post.create!(
  content: "Finally got a Saturday night to yourself? Gearing up to soak your cares away? Pick up a lavender candle from us and make your night as relaxing as possible",
  business_id: business13.id,
)
post29 = Post.create!(
  content: "We would like to introduce you to Lukas, the newest member of our family business!",
  business_id: business14.id,
)
post30 = Post.create!(
  content: "We believe that vegetables should come in all shapes and sizes, so unlike supermarkets, we won’t main farmers suffer for it!",
  business_id: business14.id,
)

puts "Attaching images to businesses..."

business_banner = [
  "https://images.unsplash.com/photo-1598256989800-fe5f95da9787?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80",
  "https://images.unsplash.com/photo-1566241231446-922b70e866b4?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8OHx8a2lja2JveGluZ3xlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1576133384936-ea17c54e9fd4?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8Y29iYmxlcnxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=900&q=60",
  "https://images.unsplash.com/photo-1522337660859-02fbefca4702?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8bmFpbCUyMHNhbG9ufGVufDB8fDB8&auto=format&fit=crop&w=900&q=60",
  "https://images.unsplash.com/photo-1585747860715-2ba37e788b70?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8YmFyYmVyfGVufDB8fDB8&auto=format&fit=crop&w=900&q=60",
  "https://images.unsplash.com/photo-1571805618149-3a772570ebcd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80",
  "https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixlib=rb-1.2.1&auto=format&fit=crop&w=1334&q=80",
  "https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80",
  "https://images.unsplash.com/photo-1477763858572-cda7deaa9bc5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2176&q=80",
  "https://images.unsplash.com/photo-1524947996703-8b011401c9e9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1300&q=80",
  "https://images.unsplash.com/photo-1441984904996-e0b6ba687e04?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8c3RvcmUlMjBjbG90aGluZ3xlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=700&q=60",
  "https://images.unsplash.com/photo-1458053688450-eef5d21d43b3?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8c29mYSUyMHRoZWF0ZXJ8ZW58MHx8MHw%3D&auto=format&fit=crop&w=900&q=60",
  "https://images.unsplash.com/photo-1545253088-68fe6b5468fd?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8Y2FuZGxlJTIwc2hvcHxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=700&q=60",
  "https://images.unsplash.com/photo-1583636912119-6a33fce8899c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1567&q=80" ]

business_avatar = [
  "https://images.unsplash.com/photo-1520013573795-38516d2661e4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1707&q=80",
  "https://images.unsplash.com/photo-1521800641212-77d98bb90d21?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1567&q=80",
  "https://images.unsplash.com/photo-1605243072591-326f09af85d6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
  "https://images.unsplash.com/photo-1571290274554-6a2eaa771e5f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80",
  "https://images.unsplash.com/photo-1507914630432-36c25334fe9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1464&q=80",
  "https://images.unsplash.com/photo-1543606552-c49e38aa9e15?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2089&q=80",
  "https://images.unsplash.com/photo-1517874321532-e910bae7ca4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1220&q=80",
  "https://images.unsplash.com/photo-1598909514165-a8c8f3f29986?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80",
  "https://images.unsplash.com/photo-1537734796389-e1fc293cf856?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2132&q=80",
  "https://images.unsplash.com/photo-1581837441861-69cd38e9a9f1?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8Z2FsbGVyeXxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=900&q=60", "https://images.unsplash.com/photo-1472851294608-062f824d29cc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2100&q=80",
  "https://images.unsplash.com/photo-1478720568477-152d9b164e26?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Y2luZW1hfGVufDB8fDB8&auto=format&fit=crop&w=900&q=60", "https://images.unsplash.com/photo-1573747028701-bc903c9de2c4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80",
  "https://images.unsplash.com/photo-1579113800032-c38bd7635818?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8dmVnZXRhYmxlc3xlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=1000&q=60" ]

business_owner = [
  "https://images.unsplash.com/photo-1583123810408-23e7b5d1af9f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80",
  "https://images.unsplash.com/flagged/photo-1566064352554-f36ef0ef23b2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80",
  "https://images.unsplash.com/photo-1553267751-1c148a7280a1?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fG1hbnxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8d29tYW58ZW58MHx8MHw%3D&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1523278669709-c05da80b6a65?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fG1pZGRsZSUyMGFnZWQlMjBtYW58ZW58MHx8MHw%3D&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1595475038784-bbe439ff41e6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2134&q=80",
  "https://images.unsplash.com/photo-1567850809572-96538630a0ec?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80",
  "https://images.unsplash.com/photo-1541670317641-d8294a62294c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=752&q=80",
  "https://images.unsplash.com/photo-1573409852550-139898a59fa0?ixlib=rb-1.2.1&auto=format&fit=crop&w=2200&q=80",
  "https://images.unsplash.com/photo-1544225917-1bf66feace19?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80",
  "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80",
  "https://images.unsplash.com/photo-1517486808906-6ca8b3f04846?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjN8fHBlb3BsZXxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8bWFufGVufDB8fDB8&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1546961329-78bef0414d7c?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8d29tYW58ZW58MHx8MHw%3D&auto=format&fit=crop&w=800&q=60" ]

business_first = [
 "https://images.unsplash.com/photo-1473232117216-c950d4ef2e14?ixlib=rb-1.2.1&auto=format&fit=crop&w=1613&q=80",
  "https://images.unsplash.com/photo-1535469420027-517674dad7a1?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjV8fHdvbWFuJTIwYm94aW5nfGVufDB8fDB8&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1601280729929-b9e004dd7da7?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Y29iYmxlcnxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=900&q=60",
  "https://images.unsplash.com/photo-1457972729786-0411a3b2b626?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fG5haWwlMjBzYWxvbnxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=900&q=60",
  "https://images.unsplash.com/photo-1587909209111-5097ee578ec3?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8YmFyYmVyfGVufDB8fDB8&auto=format&fit=crop&w=900&q=60",
  "https://images.unsplash.com/photo-1466978913421-dad2ebd01d17?ixlib=rb-1.2.1&auto=format&fit=crop&w=1567&q=80",
  "https://images.unsplash.com/photo-1485872299829-c673f5194813?ixlib=rb-1.2.1&auto=format&fit=crop&w=964&q=80",
  "https://images.unsplash.com/photo-1531917115039-473b5a388f40?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80",
  "https://images.unsplash.com/photo-1517686469429-8bdb88b9f907?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80",
  "https://images.unsplash.com/photo-1562766509-16487a9dd592?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzZ8fGdhbGxlcnl8ZW58MHx8MHw%3D&auto=format&fit=crop&w=900&q=60",
  "https://images.unsplash.com/photo-1441986300917-64674bd600d8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2100&q=80",
  "https://images.unsplash.com/photo-1559570278-eb8d71d06403?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8Y2luZW1hfGVufDB8fDB8&auto=format&fit=crop&w=900&q=60",
  "https://images.unsplash.com/photo-1572726729207-a78d6feb18d7?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8Y2FuZGxlfGVufDB8fDB8&auto=format&fit=crop&w=700&q=60",
  "https://images.unsplash.com/photo-1557844352-761f2565b576?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8dmVnZXRhYmxlc3xlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=1000&q=60"
 ]

business_second = [ "https://images.unsplash.com/photo-1588776814546-1ffcf47267a5?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8ZGVudGlzdHxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1593352216923-dd279c825ab0?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTd8fHdvbWFuJTIwYm94aW5nfGVufDB8fDB8&auto=format&fit=crop&w=900&q=60",
  "https://images.unsplash.com/photo-1601280728248-0a60229ed914?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8OHx8Y29iYmxlcnxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=900&q=60",
  "https://images.unsplash.com/photo-1559006045-d34d415b2cff?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mzh8fG5haWwlMjBzYWxvbnxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=900&q=60",
  "https://images.unsplash.com/photo-1503951914875-452162b0f3f1?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8YmFyYmVyfGVufDB8fDB8&auto=format&fit=crop&w=900&q=60",
  "https://images.unsplash.com/photo-1557366972-e5f841541577?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80",
  "https://images.unsplash.com/photo-1547147278-b6acb274b6b5?ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80",
  "https://images.unsplash.com/photo-1514066558159-fc8c737ef259?ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80",
  "https://images.unsplash.com/photo-1483695028939-5bb13f8648b0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80",
  "https://images.unsplash.com/photo-1561926797-fa9e23386fe6?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mzl8fGdhbGxlcnl8ZW58MHx8MHw%3D&auto=format&fit=crop&w=900&q=60",
  "https://images.unsplash.com/photo-1591085686350-798c0f9faa7f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2089&q=80",
  "https://images.unsplash.com/photo-1527979809431-ea3d5c0c01c9?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjF8fGNpbmVtYXxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=900&q=60",
  "https://images.unsplash.com/photo-1514436598301-27a65f40469f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=951&q=80",
  "https://images.unsplash.com/photo-1566385101042-1a0aa0c1268c?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8dmVnZXRhYmxlc3xlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=1000&q=60"
 ]

business_third = [
  "https://images.unsplash.com/photo-1600170311833-c2cf5280ce49?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTJ8fGRlbnRpc3R8ZW58MHx8MHw%3D&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1475670033737-f3bfd43d2d29?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTV8fGJveGluZyUyMGd5bXxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=900&q=60",
  "https://images.unsplash.com/photo-1557673862-a2a470406a30?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fGRyZXNzJTIwc2hvZXN8ZW58MHx8MHw%3D&auto=format&fit=crop&w=900&q=60",
  "https://images.unsplash.com/photo-1599206676335-193c82b13c9e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8bWFuaWN1cmV8ZW58MHx8MHw%3D&auto=format&fit=crop&w=900&q=60",
  "https://images.unsplash.com/photo-1582771498000-8ad44e6c84db?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8YmFyYmVyfGVufDB8fDB8&auto=format&fit=crop&w=900&q=60",
  "https://images.unsplash.com/photo-1541557435984-1c79685a082b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80",
  "https://images.unsplash.com/photo-1523567830207-96731740fa71?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80",
  "https://images.unsplash.com/photo-1507914464562-6ff4ac29692f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80",
  "https://images.unsplash.com/photo-1509365465985-25d11c17e812?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
  "https://images.unsplash.com/photo-1581837513225-dab7373ff55c?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mzh8fGdhbGxlcnl8ZW58MHx8MHw%3D&auto=format&fit=crop&w=900&q=60",
  "https://images.unsplash.com/photo-1582719188393-bb71ca45dbb9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80",
  "https://images.unsplash.com/photo-1536440136628-849c177e76a1?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8Y2luZW1hfGVufDB8fDB8&auto=format&fit=crop&w=900&q=60",
  "https://images.unsplash.com/photo-1556791007-ef20688e3458?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80",
  "https://images.unsplash.com/photo-1550989460-0adf9ea622e2?ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80"
]

# Attaching business images

Business.all.each_with_index do |business, index|
  file_banner = URI.open(business_banner[index])
  business.banner_photo.attach( io: file_banner, filename: "banner-#{index}", content_type: 'image/png')
  file_avatar = URI.open(business_avatar[index])
  business.avatar.attach( io: file_avatar, filename: "avatar-#{index}", content_type: 'image/png')
  file_owner = URI.open(business_owner[index])
  business.owner_photo.attach( io: file_owner, filename: "owner-#{index}", content_type: 'image/png')
  file_first = URI.open(business_first[index])
  business.business_photos.attach( io: file_first, filename: "first-#{index}", content_type: 'image/png')
  file_second = URI.open(business_second[index])
  business.business_photos.attach( io: file_second, filename: "second-#{index}", content_type: 'image/png')
  file_third = URI.open(business_third[index])
  business.business_photos.attach( io: file_third, filename: "third-#{index}", content_type: 'image/png')
end


puts "Attaching images to posts..."

post_images = [
  "https://images.unsplash.com/photo-1588776814546-daab30f310ce?ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80",
  "https://images.unsplash.com/photo-1508995476428-43d70c3d0042?ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80",
  "https://images.unsplash.com/photo-1594737626072-90dc274bc2bd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80",
  "https://images.unsplash.com/photo-1576511746135-ad5faf5b85be?ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80",
  "https://images.unsplash.com/photo-1513885535751-8b9238bd345a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
  "https://images.unsplash.com/photo-1518563222397-1875011bbf5a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80",
  "https://images.unsplash.com/photo-1599066852653-42826a50b163?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1011&q=80",
  "https://images.unsplash.com/photo-1575005435874-4dc7d3a00955?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1044&q=80",
  "https://images.unsplash.com/photo-1599206676335-193c82b13c9e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=951&q=80",
  "https://images.unsplash.com/photo-1553521041-d168abd31de3?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80",
  "https://images.unsplash.com/photo-1582893561942-d61adcb2e534?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=937&q=80",
  "https://images.unsplash.com/photo-1542299278-a78464851ddc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80",
  "https://images.unsplash.com/photo-1559466273-d95e72debaf8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80",
  "https://images.unsplash.com/photo-1590903992199-d62079236c91?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=975&q=80",
  "https://images.unsplash.com/photo-1603679283701-d00d2859b57c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1017&q=80",
  "https://images.unsplash.com/photo-1574521091460-429ab1506db1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=946&q=80",
  "https://images.unsplash.com/photo-1582740598622-e0784ee1f333?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1020&q=80",
  "https://images.unsplash.com/photo-1543132685-cd95dd76c03d?ixlib=rb-1.2.1&auto=format&fit=crop&w=948&q=80",
  "https://images.unsplash.com/photo-1548869206-93b036288d7e?ixlib=rb-1.2.1&auto=format&fit=crop&w=941&q=80",
  "https://images.unsplash.com/photo-1597388778288-8ae51973e2a3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1042&q=80",
  "https://images.unsplash.com/photo-1583851617967-6a928fe8508b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1051&q=80",
  "https://images.unsplash.com/photo-1560643123-9157226100d2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80",
  "https://images.unsplash.com/photo-1540479859555-17af45c78602?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
  "https://images.unsplash.com/photo-1541961017774-22349e4a1262?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=995&q=80",
  "https://images.unsplash.com/photo-1532904122878-9a1846ec4f76?ixlib=rb-1.2.1&auto=format&fit=crop&w=1052&q=80",
  "https://images.unsplash.com/photo-1516762689617-e1cffcef479d?ixlib=rb-1.2.1&auto=format&fit=crop&w=954&q=80",
  "https://images.unsplash.com/photo-1533928298208-27ff66555d8d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
  "https://images.unsplash.com/photo-1604975701397-6365ccbd028a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=975&q=80",
  "https://images.unsplash.com/photo-1558451635-9ed6e6e9a6e1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80",
  "https://images.unsplash.com/photo-1599313804992-44e32565fd6d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
  "https://images.unsplash.com/photo-1579628287525-f88a27409d87?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1053&q=80",
  "https://images.unsplash.com/photo-1557844352-761f2565b576?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"
]


Post.all.each_with_index do |post, index|
  file_post = URI.open(post_images[index])
  post.post_image.attach( io: file_post, filename: "post_image-#{index}", content_type: 'image/png')
end


puts "Created #{User.count} users, #{Category.count} categories, #{Business.count} businesses, and #{Post.count} posts"
