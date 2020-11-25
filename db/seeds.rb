# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning up db...'
User.destroy_all
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
  name: "Eyman's ",
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
  website_url: "www.apple_nails.de",
    )
business5 = Business.create!(
  user: user2,
  category: category6,
  name: "Alley Barber Shop",
  short_bio: "Authentic Barber experience",
  long_bio: "A family-friendly burger shop, serving burgers, hot dogs, fries, wraps and salads and of course, friench fires in a 90's themed atmosphere. We are passionate about burgers, using the best ingredients, working directly with our meat producers and bun producers to to create our unique steak patties freshly baked buns. We have seating as well as take-away, with meat, vegetarian and vegan offerings on the menu.",
  owner_name: "Deniz ",
  owner_bio: "I feel most confident when I have my scissors in my hands and doing work. I've had my barbershop now for 20 years, and I still love my job and appreciate my customers for all the support they have given me throughout the years. ",
  address: "Mulackstraße 33, 10119 Berlin",
  telephone: "+49-123-4567-8901",
  email: "alley@barber.com",
  opening_hours: nil,
  accept_cards: true,
  website_url: "www.alley_barber_shop.de",
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
  website_url: "www.cafelouis.de/",
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
  long_bio: "Established by a passion lover in lat 2010s. Focused on on fashionable Yuppies with a lot of money",
  owner_name: "Helena Bonstat",
  owner_bio: "Born and raised in Berlin. I have been working the fashion indurstry for as long as I can think of, true passion makes the best professionals!",
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
  short_bio: "Small independent shop focused on candle crafting",
  long_bio: "We are craftsmen that really love candles. Anything candle you can imagine is possible with us!",
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


puts "Created #{User.count} categories, #{Category.count} categories, and #{Business.count} businesses"
