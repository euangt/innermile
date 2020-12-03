require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Be patient...and good luck.'
puts 'Cleaning up db...'
Conversation.destroy_all
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
  business_owner: true
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
  address: "Ackerstraße 23, 10115 Berlin",
  business_owner: true
  )

puts 'Seeding categories...'

category1 = Category.create!(name: "Arts & Culture")
category2 = Category.create!(name: "Education")
category3 = Category.create!(name: "Food & Dining")
category4 = Category.create!(name: "Health & Medicine")
category5 = Category.create!(name: "Home & Garden")
category6 = Category.create!(name: "Personal Care")
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
  opening_hours: "Tuesday - Saturday 9:00 - 13:00",
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
  opening_hours: "5-11pm",
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
  opening_hours: "5-11pm",
  accept_cards: true,
  website_url: "www.eymans.de",
    )
business4 = Business.create!(
  user: user1,
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
  opening_hours: "5-11pm",
  accept_cards: true,
  website_url: "www.apple-nails.de",
    )
business5 = Business.create!(
  user: user1,
  category: category6,
  name: "Alley Barber Shop",
  short_bio: "Authentic Barber experience",
  long_bio: "A family-friendly burger shop, serving burgers, hot dogs, fries, wraps and salads and of course, french fires in a 90's themed atmosphere. We are passionate about burgers, using the best ingredients, working directly with our meat producers and bun producers to to create our unique steak patties freshly baked buns. We have seating as well as take-away, with meat, vegetarian and vegan offerings on the menu.",
  owner_name: "Deniz ",
  owner_bio: "I feel most confident when I have my scissors in my hands and doing work. I've had my barbershop now for 20 years, and I still love my job and appreciate my customers for all the support they have given me throughout the years. ",
  address: "Mulackstraße 33, 10119 Berlin",
  telephone: "+49-123-4567-8901",
  email: "alley@barber.com",
  opening_hours: "24/7",
  accept_cards: true,
  website_url: "www.alley-barber-shop.de",
    )
business6 = Business.create!(
  user: user1,
  category: category3,
  name: "Ben's Burgers",
  short_bio: "Best craft proper burger in Berlin",
  long_bio: "Best bar for chilled out drinks with friends. Try our original cocktails, as you enjoy the live music, shabby-chic decor and prime people-watching location. The the bar staff know their Old Fashions from their Manhattans. ",
  owner_name: "Ben Burger man",
  owner_bio: "I came to Berlin in 2013. I'm Inspired by the American style of food and diners, and I didn’t wait long to open my first Burger restaurant in Berlin as I arrived. My mission is providing quality food. We've been warmly welcomed by everyone in the neighbourhood, and I realise everyday how fantastic it to make burgers for everyone. I'm usually in the open kitchen with the patties, come by!",
  address: "Rosenthaler Str. 68, 10119 Berlin",
  telephone: "+49-123-4567-8901",
  email: "ben@burger.com",
  opening_hours: "24/7",
  accept_cards: true,
  website_url: "www.ben-burger.com",
    )
business7 = Business.create!(
  user: user1,
  category: category3,
  name: "Bierhaus Urban",
  short_bio: "Cosy boozer, great atmosphere, friendly staff",
  long_bio: "Best bar for chilled out drinks with friends. Try our original cocktails, as you enjoy the live music, shabby-chic decor and prime people-watching location. The the bar staff know their Old Fashions from their Manhattans. ",
  owner_name: "Marcus Kotz",
  owner_bio: "I'm original from Poland, and have worked in the restaurant industry since I was 16. I'm a Hall of Fame Inductee by Tales of the cocktail. If you don't know what you want, just descrbe your mood. Waiting for your visit!",
  address: "Choriner Str. 76, 10119 Berlin",
  telephone: "+49-123-4567-8901",
  email: "bier@urban.com",
  opening_hours: "5-11pm",
  accept_cards: true,
  website_url: "www.bierplatz.de",
    )
business8 = Business.create!(
  user: user1,
  category: category3,
  name: "Café Louis",
  short_bio: "Italian Coffee and Cakes",
  long_bio: "Cafè is run by a joyful Italian couple, Louis and his wife Nora. We offer authentic well-brewed Italian cappuccino, and our cafe is spacious - an ideal place to chatt and hang out with your friends, or to get some work done on your laptop and fill your belly with homemade sweets and sadwiches. ",
  owner_name: "Louis",
  owner_bio: "We love our neighbourhood. We seem to attract a very eclectic crow. and we love talking to each and everyone.  Daily conversations can be incredibly fascinating, and it’s exhilarating to think it all starts off with a coffee.",
  address: "Zehdenicker Str. 17, 10119 Berlin",
  telephone: "+49-123-4567-8901",
  email: "cafe@louis.com",
  opening_hours: "10-5pm",
  accept_cards: true,
  website_url: "www.cafelouis.de",
    )
business9 = Business.create!(
  user: user5,
  category: category3,
  name: "Jon's",
  short_bio: "French & German Bakery",
  long_bio: "The bakery was a converted apotheke, rustic on the outside and perfection on the inside. The breads were all local grain and we pride ourselves in variation, from bread, rolls, cookies, pies, pastries, and muffins, We open early at 7am everyday. Come and grab your croissants and danish on your way to work!",
  owner_name: "Jon",
  owner_bio: "I trained in Pastry & Bakery in both France and Germany and opened my own store this year. The neighbourhood has given me a very warm welcome.  What is your favorite bread or pastry? We are always excited to hear customer requests and add new special/seasonal offers!",
  address: "Auguststraße 24, 10117 Berlin",
  telephone: "+49-123-4567-8901",
  email: "jon@bread.com",
  opening_hours: "10am-6pm",
  accept_cards: true,
  website_url: "www.jons.com",
    )
business10 = Business.create!(
  user: user1,
  category: category1,
  name: "Schoenhausser Art Gallery",
  short_bio: "Small independent gallery, specializing in 1960's Berlin pop-art",
  long_bio: "First established in the late 1960's, this charming gallery has changed hands 3 times but has always retained its commitment to exhibiting works that challenge and mirror the evolution of Berlin",
  owner_name: "Marcel Bruhr",
  owner_bio: "Originally from Dusseldorf, and a proud Berliner since 1994, I have been curator of the gallery for the past 20 years. ",
  address: "Kastanienallee 59, 10119 Berlin",
  telephone: "+49-123-4567-8901",
  email: "shoen@art.com",
  opening_hours: "12-10pm",
  accept_cards: true,
  website_url: "www.schoenhausserart.de",
    )
business11 = Business.create!(
  user: user1,
  category: category8,
  name: "Nicer Living",
  short_bio: "Fashion for the conscious shopper",
  long_bio: "Established as a passion-project in the late 2010s, we bring the best in sustainable fashion.",
  owner_name: "Helena Bonstat",
  owner_bio: "Born and raised in Berlin. I have been working the fashion industry for as long as I can think of, true passion makes the best professionals!",
  address: "Brunnenstraße 164, 10119 Berlin",
  telephone: "+49-123-4567-8901",
  email: "nicer@living.com",
  opening_hours: "8am-5pm",
  accept_cards: true,
  website_url: "www.nicer-living.de",
    )
business12 = Business.create!(
  user: user1,
  category: category1,
  name: "Rückpassage Cinema",
  short_bio: "Community-owned cinema with sofa's",
  long_bio: "At Rückpassage, we pride ourselves on the cinema experience and the belief that cinema is best with comfort and a beer, without breaking the bank. ",
  owner_name: "The Rückpassage community",
  owner_bio: "Owned by the community around us, we want to bring neighbours together with family and seniors' nights ",
  address: "Bergstraße 22, 10115 Berlin",
  telephone: "+49-123-4567-8901",
  email: "ruckpassage@cinema.com",
  opening_hours: "8am-5pm",
  accept_cards: true,
  website_url: "www.ruckpassagecinema.de",
    )
business13 = Business.create!(
  user: user1,
  category: category5,
  name: "Candle Corner",
  short_bio: "Independent shop focused on candle crafting",
  long_bio: "We are craftsmen that really love candles. Any candle you can imagine is possible with us!",
  owner_name: "The Rückpassage community",
  owner_bio: "Born in a small village in the south of Germany, Heinz learned the carft of making candles from his father and kept onto it ever since",
  address: "Ackerstraße 16, 10115 Berlin",
  telephone: "+49-123-4567-8901",
  email: "candle@corner.com",
  opening_hours: "2pm - 2am",
  accept_cards: true,
  website_url: "www.candlecorner.de",
    )
business14 = Business.create!(
  user: user1,
  category: category5,
  name: "Neighborhood Greens",
  short_bio: "Providing the freshest and healthiest vegetables",
  long_bio: "Established in 1980 witht the intend to provide the neighborhood with the best regional vegetables Family-owned shop to puts its focus on ",
  owner_name: "Gabi Schmidt",
  owner_bio: "Born in Berlin, I have worked as a vegetable seller all my life and cannot imagine doing anything else",
  address: "Brunnenstraße 11, 10119 Berlin",
  telephone: "+49-123-4567-8901",
  email: "greens@neighborhood.com",
  opening_hours: "2pm - 2am",
  accept_cards: true,
  website_url: "www.greenerfood.com",
    )

business15 = Business.create!(
  user: user1,
  category: category5,
  name: "Lofts Furniture",
  short_bio: "High-end, sustainably-sourced home furnishings",
  long_bio: " If you can't hire an interior designer, at least you can shop like one. Explore our carefully selected luxury home decor, lighting & more from leading global designer brands. Our collection includes bedroom, living room and dining room furniture and vintage items from the 50s. Offering free delivery, in-store and curbside pick up for most items, as well as free 100-days return.",
  owner_name: "Greg Tucker",
  owner_bio: "My obsession with furniture has led me to open my own store in 2005. I love Berlin and have been supported by local clients in keeping this shop running. The business is quite challenging when you’re not a Big Box store, or a certain Swedish behemoth. But my goal stays the same: revolutionary quality at a revolutionary price. You don't need come to purchase anything, come around for a chat and try out our great sofas.",
  address: "Auguststraße 49A, 10119 Berlin",
  telephone: "49-123-4567-8901",
  email: "lofts@furniture.co.de",
  opening_hours: "Monday - Friday 9am - 8pm",
  accept_cards: true,
  website_url: "www.loftsmitteberlin.com",
    )
business16 = Business.create!(
  user: user1,
  category: category9,
  name: "Bonton bikes",
  short_bio: "passionate about all things cycling",
  long_bio: "Local bike shop with knowledgeable and friendly staff who are not afraid to do a little research for you. Since 1997, we have provided new and used bikes, repairs, and accessories for outdoor enthusiasts.  We have a workshop in the back with everything in stock to build, customise and repair your bike.",
  owner_name: "Peter Oh",
  owner_bio: "I came to berlin 30 years ago at a tender age, and I began training in a bike workshop repairing bikes. For more than 20 years I’ve repaired, serviced and maintained bikes in the neighbourhood, and many people know me as Mr. Oh the bike repair man. I'm in the workshop everyday with my son Markus. We promise you the best quality in the city.",
  address: "Weinbergsweg 8, 10119 Berlin",
  telephone: "49-123-4567-8901",
  email: "bonton@bikeshop.com",
  opening_hours: "Monday - Friday 9am - 8pm",
  accept_cards: true,
  website_url: "www.bontonbikesberlin.de",

    )
business17 = Business.create!(
  user: user1,
  category: category2,
  name: "Lukas' English for Kids",
  short_bio: "English classes for children from 4 years.",
  long_bio: "Would you like your child to develop their vocabulary, grammar, and confidence in English ? Through our fun,stress-free lessons filled with music, games and a wide variety of carefully planned activities, children learn English easily and naturally. Being confident in English can give your child an early advantage at school, for qualifications and career opportunities that lie ahead. Come in for a trial sessions offered every Saturday morning!",
  owner_name: "Lukas Stanley",
  owner_bio: "I'm an English Tutor with Advanced Certificate in TESL and specialized in teaching children. I have 15 years experience and enjoy being as excellent as I can be. I’m here to help children gain confidence in their ability to use the English language.",
  address: "Gormannstraße 20-24, 10119 Berlin",
  telephone: "49-123-4567-8901",
  email: "lukas@englishkids.com",
  opening_hours: "Monday - Friday 9am - 8pm",
  accept_cards: true,
  website_url: "www.lukasenglishforkids.com",

    )
business18 = Business.create!(
  user: user1,
  category: category2,
  name: "Kapitel Drei",
  short_bio: "German language school ",
  long_bio: "Would you like your child to develop their vocabulary, grammar, and confidence in English ? Through our fun,stress-free lessons filled with music, games and a wide variety of carefully planned activities, children learn English easily and naturally. Being confident in English can give your child an early advantage at school, for qualifications and career opportunities that lie ahead. Come in for a trial sessions offered every Saturday morning!",
  owner_name: "Katharina Geldmacher",
  owner_bio: "I'm an English Tutor with Advanced Certificate in TESL and specialized in teaching children. I have 15 years experience and enjoy being as excellent as I can be. I’m here to help children gain confidence in their ability to use the English language.",
  address: "Torstraße 155, 10115 Berlin",
  telephone: "49-123-4567-8901",
  email: "kapitel@dreischule.com",
  opening_hours: "Monday - Friday 9am - 8pm",
  accept_cards: true,
  website_url: "www.kapiteldreimitte.com",

    )
business19 = Business.create!(
  user: user1,
  category: category2,
  name: "Piano Academy Mitte",
  short_bio: "Jazz and Classical piano lessons",
  long_bio: "You're never too old or too young to learn to play the piano. At Piano Academy Mitte, we offer classes for anyone who's looking to learn the piano from scratch, or for those who have prior knowledge and want to advance their skills. Learn to play your favourite tunes and study jazz piano chords, scales, and chord progressions. Discover how to tackle the F7 blues, bop scales, use approach patterns, and more!",
  owner_name: "Gerard Mahler",
  owner_bio: "My piano lessons are as flexible as the definition of jazz, itself. Tell us about your musical interests, aspirations, and experience, and we’ll match you with the perfect jazz piano teacher for you!",
  address: "Auguststraße 49A, 10119 Berlin",
  telephone: "49-123-4567-8901",
  email: "piano@academymitte.de",
  opening_hours: "Monday - Friday 9am - 8pm",
  accept_cards: true,
  website_url: "www.pianoacademyberlinmitte.com",

    )
business20 = Business.create!(
  user: user1,
  category: category2,
  name: "Mitte Academy of Creative Leadership",
  short_bio: "Developing better leaders, high performing teams",
  long_bio: "The Mitte Academy of Creative Leadership has over a decade of experience in developing leaders. The academy aims to maximize the participants’ leadership effectiveness, through a unique combination of coaching, networking, analytical reflection and tailor-made personal development. Highlights: Providing Stimulating Learning Environment, Using Collaborative Teaching Practices. Enrol for our 2021 program!",
  owner_name: "Juliana Cidade",
  owner_bio: "As a leadership coach and business strategist, I have dedicated my career to my mission of helping people build a life and business on their own terms. Originally founded in Brazil, we opened the academy branch in Berlin with a focus is on our passion for developing the world’s next generation of leaders and creating experiences that transform lives. I primarily work with individuals who are interested in making a career transition or experiencing some kind of leadership challenge.",
  address: "Linienstraße 75, 10119 Berlin",
  telephone: "49-123-4567-8901",
  email: "creative@leadershipacademy.de",
  opening_hours: "Monday - Friday 9am - 8pm",
  accept_cards: true,
  website_url: "www.creativeleadershipacademy.de",

    )
business21 = Business.create!(
  user: user1,
  category: category2,
  name: "SavvyBoomers",
  short_bio: "Senior’s guide to computers and technology",
  long_bio: "TechSavvyBoomers, established in 2020, is;  committed to ensuring that seniors are up to speed on technology! Overcome your psychological barriers and familiarlize yourself with different devices with courses tailored to your interests; ipad, PC, Apple, mobile phone, Kindl and more. It's never too late to learn. Learning to use a computer is not just for young people. The presence of peers at similar stages of learning will motivate you in ways you cannot achieve alone! Join as we explore the world of technology!",
  owner_name: "Judith Schmidt",
  owner_bio: "I was once a newbie to technology, and it was when I turned 60 that I bought my first computer. I opened this school to give senior residents in the community, the opportunity to connect to the world through technology. Check out my book: 'It's Never Too Late to Love Technology'. Let's overcome that fear and get computer savvy!",
  address: "Joachimstraße 14, 10119 Berlin",
  telephone: "49-123-4567-8901",
  email: "good@techboomer.de",
  opening_hours: "Monday - Friday 9am - 8pm",
  accept_cards: true,
  website_url: "www.techsavvygood.de",

    )
business22 = Business.create!(
  user: user1,
  category: category3,
  name: "LeClerc's Fine Wines",
  short_bio: "French-owned winery specialising in Burgundy wines",
  long_bio: "Hosting a range of delectable wines hailing from the Rhone and Saone valleys, our expertise and collection is fit for every occasion",
  owner_name: "Thierry Deschamps",
  owner_bio: "I grew up among the vineyards of Burgundy and hope to bring one of the delights of my family chateau to my new home of Berlin",
  address: "Torstraße 99, 10119 Berlin",
  telephone: "49-123-4567-8901",
  email: "thiery@deschamps.com",
  opening_hours: "12pm-7pm",
  accept_cards: true,
  website_url: "www.techsavvygood.de",

    )
business23 = Business.create!(
  user: user1,
  category: category3,
  name: "The Libertine",
  short_bio: "Trendy bar with superb selection of gin cocktails",
  long_bio: "Long-established in the hearts of young Berliners, our glorious drinks are perfect for every occasion",
  owner_name: "Louise Farhner",
  owner_bio: "Having travelled around Europe for much of my youth, I have lived my dream of running a bar in Berlin for the past 8 years ",
  address: "Gartenstraße 10-17, 10115 Berlin",
  telephone: "49-123-4567-8901",
  email: "louise@thelibertine.com",
  opening_hours: "2pm - 2am",
  accept_cards: true,
  website_url: "thelibertine.de",
    )
business24 = Business.create!(
  user: user1,
  category: category3,
  name: "Jade's Finest",
  short_bio: "High-end whiskey distillery with attached show room",
  long_bio: "We offer a wide range of whiskeys from all over the world and even started marketing our own. Make sure to step by and try our newest blend! ",
  owner_name: "Jade McDaniels",
  owner_bio: "Growing up in a family of whiskey distillers made it obvious to continue the family tradition. That's why I'm pouring all of my passion into crafting the best whiskeys possible. After moving to Berlin 2 years ago it was only a matter of time until I was about to open my own shop.",
  address: "Joachimstraße 20, 10119 Berlin",
  telephone: "",
  email: "jade@jadesfinest.com",
  opening_hours: "9am-7pm",
  accept_cards: true,
  website_url: "www.jadesfinest.com",
    )
business25 = Business.create!(
  user: user1,
  category: category5,
  name: "Bamboo Furniture",
  short_bio: "Luxury furniture crafted from bamboo",
  long_bio: "We have the most unique bamboo furniture in all of Berlin.",
  owner_name: "Tom Ngyuen",
  owner_bio: "After moving to Berlin from Bangkok we decided to continue our craft and open a shop in Berlin to share the amazing techniques and results of bamboo craftsmanship",
  address: "Weinbergsweg 10, 10119 Berlin",
  telephone: "49-123-4567-8901",
  email: "tom@bamboo.com",
  opening_hours: nil,
  accept_cards: true,
  website_url: "www.bamboofurn.com",
    )
business26 = Business.create!(
  user: user1,
  category: category3,
  name: "Beer's Delight",
  short_bio: "Upscale neighborhood pub providing you with the best craft beers",
  long_bio: "Located right at the heart of your neighborhood which makes it the ideal place to spend your evenings as you would in your own living room",
  owner_name: "Peter Schmidt",
  owner_bio: "I am a passionate about beer and want to share my passion with as many people as possible. In order to have a 'livingroom' in the neighborhood Beer's delight was founded.  ",
  address: "Kastanienallee 33, 10435 Berlin",
  telephone: "49-123-4567-8901",
  email: "peter@delight.com",
  opening_hours: "8am-7pm",
  accept_cards: true,
  website_url: "www.beersdelight.com",
    )
business27 = Business.create!(
  user: user1,
  category: category9,
  name: "Biker Oasis",
  short_bio: "Neighborhood bike shop that specialized on repairing high end racing bikes",
  long_bio: "Bike afficiando that loves to work on bikes and have a chat about the latest updates in the world of bikes",
  owner_name: "Yannik Berger",
  owner_bio: "I travelled the world with my bike and learned about bike cuture all over the world. I want to share my experience with all other bike lovers out there!",
  address: "Kastanienallee 53, 10119 Berlin",
  telephone: "49-123-4567-8901",
  email: "yannik@bo.com",
  opening_hours: "3pm-2am",
  accept_cards: true,
  website_url: "www.bikersoasis.com",
    )
business28 = Business.create!(
  user: user1,
  category: category3,
  name: "Anne's conservatory",
  short_bio: "Conservatory with focus on music no older than 1850.",
  long_bio: "You love to sing? Great and come join in on great nights with like minded people!",
  owner_name: "Anne Müller",
  owner_bio: "After working as professional singer for the last 20 years I felt that a change was more than overdue. By opening the observatory I made a childhood dream come true und wish to share it as many people as possible.",
  address: "Gipsstraße 9, 10119 Berlin",
  telephone: "49-123-4567-8901",
  email: "anne@conservatory.com",
  opening_hours: "4pm-20pm",
  accept_cards: true,
  website_url: "www.aconservatory.com",
    )

puts "You made it this far and, for that, we salute you"
puts "Seeding events..."

event1 = Event.create(
  date: " ",
  location: " ",
  name: " ",
  time: " ",
  date: "2020-12-05",
  business_id: business1.id
)

event2 = Event.create(
  date: " ",
  location: " ",
  name: " ",
  time: " ",
  date: "2020-12-06",
  business_id: business1.id
)

event3 = Event.create(
  date: " ",
  location: " ",
  name: " ",
  time: " ",
  date: "2020-12-07",
  business_id: business1.id
)

event4 = Event.create(
  date: " ",
  location: " ",
  name: " ",
  time: " ",
  date: "2020-12-08",
  business_id: business1.id
)

event5 = Event.create(
  date: " ",
  location: " ",
  name: " ",
  time: " ",
  date: "2020-12-09",
  business_id: business1.id
)

event6 = Event.create(
  date: " ",
  location: " ",
  name: " ",
  time: " ",
  date: "2020-12-04",
  business_id: business1.id
)

event7 = Event.create(
  date: " ",
  location: " ",
  name: " ",
  time: " ",
  date: "2020-12-05",
  business_id: business1.id
)

puts "Seeding posts..."

post1 = Post.create!(
  content: "Think it has been too long since your last checkup? Give us a call and arrange your next appointment",
  business_id: business1.id,
)
post2 = Post.create!(
  content: "Meet our newest instructor, Louise! Louise joins us from the national judo association and brings with her a wealth of experience in meditation, yoga and, of course, judo",
  business_id: business2.id,
)
post3 = Post.create!(
  content: "We all miss spending time with our closest friends, so why not buy a shared manicure and treat yourselves to an afternoon of pampering?",
  business_id: business4.id,
)
post4 = Post.create!(
    content: "Hair cuts shouldn’t be a chore; all of ours come with a complimentary beer. So what are you waiting for?",
  business_id: business5.id,
)
post5 = Post.create!(
  content: "Presenting the newest addition to our menu, the Thanksgiving burger. Treat yourself to true American gluttony. Don’t wait, it’ll only be here for the next week!",
  business_id: business6.id,
)
post6 = Post.create!(
  content: "As the cold nights draw-in, come fight the winter chill with us!",
  business_id: business7.id,
)
post7 = Post.create!(
  content: "A new lockdown doesn’t mean you must indulge less? Order online and we will have the richest Beef Bourguignon ready when you are",
  business_id: business8.id,
)
post8 = Post.create!(
  content: "Our bread is baked fresh each morning so start your morning with the delicious taste of a warm croissant",
  business_id: business9.id,
)
post9 = Post.create!(
  content: "Want to get your kids away from the tv this weekend? Come to the Schoenhausser this Saturday when kids go free!",
  business_id: business10.id,
)
post10 = Post.create!(
  content: "All of our items are sustainably sourced so you can look your best, guilt-free!",
  business_id: business11.id,
)
post11 = Post.create!(
  content: "Don’t miss the newest mind-bending thriller from Sir Christopher Nolan! Weekday screenings of his newest masterpiece from only €5",
  business_id: business12.id,
)
post12 = Post.create!(
  content: "Finally got a Saturday night to yourself? Gearing up to soak your cares away? Pick up a lavender candle from us and make your night as relaxing as possible",
  business_id: business13.id,
)
post13 = Post.create!(
  content: "We would like to introduce you to Lukas, the newest member of our family business!",
  business_id: business14.id,
)
post14 = Post.create!(
  content: "We are so much more than just shoes! We offer quick repairs on bags, watches, luggage, even golf bags and more",
  business_id: business3.id,
)
post15 = Post.create!(
  content: "Self-confidence is an essential part of leadership. Conveyed self-confidence enhances status and is linked to an assumption of success and competence. Join us in our academy, and realize your leadership potential and develop the skills to bring out the best in others!",
  business_id: business20.id,
)
post16 = Post.create!(
  content: "We all know how much sugar our kids can get through on Halloween, so for all of November we are offering half-price checkups for your little ones",
  business_id: business1.id,
)
post17 = Post.create!(
  content: "Don’t wait until the new year to get yourself into shape! Come and drop by for one of our free beginners classes. No experience needed, just positivity and a can-do attitude",
  business_id: business2.id,
)
post18 = Post.create!(
  content: "Wondering what to get for your significant other this Christmas? We are offering half-price discounts across a range of memberships so why not change someone's life this year, not just their sock collection",
  business_id: business2.id,
)
post19 = Post.create!(
  content: "Got yourself the first post-lockdown date? Come see us and make sure your nails are looking their best for the big day",
  business_id: business4.id,
)
post20 = Post.create!(
  content: "No-shave November changed your life? Want to keep that chin fuzz looking fine? Our team can help keep your facial fur at its best",
  business_id: business5.id,
)
post21 = Post.create!(
  content: "We won’t let the newest regulations stop us from bringing you the finest in burger brilliance. Order online for free delivery and even a free drink if you don’t mind collecting it yourself!",
  business_id: business6.id,
)
post22 = Post.create!(
  content: "Cabin fever setting in after the fifth straight day of working from home? Come join us for our famous happy hour! All beers on tap are half-price, monday to thursday,  5-7! You know it makes sense!!",
  business_id: business7.id,
)
post23 = Post.create!(
  content: "Eat-in or takeout? You choose! It’s never been easier to find the finest food France has to offer",
  business_id: business8.id,
)
post24 = Post.create!(
  content: "Struggling with the darker mornings this time of year? Come grab a coffee with your croissant",
  business_id: business9.id,
)
post25 = Post.create!(
  content: "We are committed to reducing our environmental impact so we are proud to introduce you to our new spicy vegan burger, the Temple of Seitan",
  business_id: business6.id,
)
post26 = Post.create!(
  content: "Has your man-gone from hipster to hippie? Lets get you looking your best for that first big night out!",
  business_id: business5.id,
)
post27 = Post.create!(
  content: "Community alert! All our bread is half-price from now until we close for the day!",
  business_id: business9.id,
)
post28 = Post.create!(
  content: "We are proud to present our newest exhibition, featuring the up and coming artist Ben Gordon. His sculptures offer a sardonic and, often, witty rebuke of modern America",
  business_id: business10.id,
)
post29 = Post.create!(
  content: "Fashion shouldn’t hurt the world around us. That’s why we are introducing our newest bamboo clothing range",
  business_id: business11.id,
)
post30 = Post.create!(
  content: "Never underestimate the power of brainstorming! Organize your thoughts into colors and notice how easy it becomes to turn your ideas into action.",
  business_id: business20.id,
)
post31 = Post.create!(
  content: "We believe that the best films should be enjoyed with comfort and indulgence, that’s why all of our screens have sofas and a bar to make every viewing memorable",
  business_id: business12.id,
)
post32 = Post.create!(
  content: "Nothing says Valentines and romance like our Rose leaf candle. Make your night a little more special",
  business_id: business13.id,
)
post33 = Post.create!(
  content: "We believe that vegetables should come in all shapes and sizes, so unlike supermarkets, we won’t main farmers suffer for it!",
  business_id: business14.id,
)
post34 = Post.create!(
  content: "Don’t let winter get to your favourite pair of shoes! Drop them off with us and let them get the care and attention they deserve",
  business_id: business3.id,
)


puts "Attaching images to businesses..."

business_banner = [
  "https://images.unsplash.com/photo-1598256989800-fe5f95da9787?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=80",
  "https://images.unsplash.com/photo-1566241231446-922b70e866b4?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8OHx8a2lja2JveGluZ3xlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=900&q=80",
  "https://images.unsplash.com/photo-1576133384936-ea17c54e9fd4?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8Y29iYmxlcnxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=900&q=80",
  "https://images.unsplash.com/photo-1522337660859-02fbefca4702?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8bmFpbCUyMHNhbG9ufGVufDB8fDB8&auto=format&fit=crop&w=900&q=80",
  "https://images.unsplash.com/photo-1585747860715-2ba37e788b70?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8YmFyYmVyfGVufDB8fDB8&auto=format&fit=crop&w=900&q=80",
  "https://images.unsplash.com/photo-1571805618149-3a772570ebcd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=80",
  "https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=80",
  "https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?ixlib=rb-1.2.1&auto=format&fit=crop&w=900&q=80",
  "https://images.unsplash.com/photo-1477763858572-cda7deaa9bc5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=80",
  "https://images.unsplash.com/photo-1524947996703-8b011401c9e9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=80",
  "https://images.unsplash.com/photo-1524947996703-8b011401c9e9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=80",
  "https://images.unsplash.com/photo-1458053688450-eef5d21d43b3?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8c29mYSUyMHRoZWF0ZXJ8ZW58MHx8MHw%3D&auto=format&fit=crop&w=900&q=80",
  "https://images.unsplash.com/photo-1545253088-68fe6b5468fd?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8Y2FuZGxlJTIwc2hvcHxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=900&q=80",
  "https://images.unsplash.com/photo-1583636912119-6a33fce8899c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=900&q=80",
  "https://images.unsplash.com/photo-1567016432779-094069958ea5?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=900&q=80",
  "https://images.unsplash.com/photo-1567602901358-5ba00815eb15?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=900&q=80",
  "https://images.unsplash.com/photo-1503676260728-1c00da094a0b?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=900&q=80",
  "https://images.unsplash.com/photo-1588605360336-77ac8ee6fc53?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=900&q=80",
  "https://images.unsplash.com/photo-1552422535-c45813c61732?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=900&q=80",
  "https://images.unsplash.com/photo-1541844053589-346841d0b34c?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=900&q=80",
  "https://images.unsplash.com/photo-1581056771370-4814aa6dd705?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=900&q=80",
  "https://images.unsplash.com/photo-1534655882117-f9eff36a1574?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1950&q=80",
  "https://images.unsplash.com/photo-1602179646776-fd67df594768?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1052&q=80",
  "https://images.unsplash.com/photo-1567976689236-3593695eb54b?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fGRpc3RpbGxlcnl8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60",
  "https://images.unsplash.com/photo-1514454923228-7ef54f9251c9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8YmFtYm9vJTIwZnVybml0dXJlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60",
  "https://images.unsplash.com/photo-1485686531765-ba63b07845a7?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8cHVifGVufDB8fDB8&auto=format&fit=crop&w=1296&q=60",
  "https://images.unsplash.com/photo-1521078803125-7efd09b65b8f?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8YmlrZSUyMHNob3B8ZW58MHx8MHw%3D&auto=format&fit=crop&w=1296&q=60",
  "https://images.unsplash.com/photo-1484383564173-89117c57b303?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8bXVzaWMlMjBzY2hvb2x8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1296&q=60"
]

business_avatar = [
  "https://images.unsplash.com/photo-1520013573795-38516d2661e4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1521800641212-77d98bb90d21?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1605243072591-326f09af85d6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1571290274554-6a2eaa771e5f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1507914630432-36c25334fe9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1543606552-c49e38aa9e15?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1517874321532-e910bae7ca4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1598909514165-a8c8f3f29986?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1537734796389-e1fc293cf856?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1581837441861-69cd38e9a9f1?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8Z2FsbGVyeXxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1472851294608-062f824d29cc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1478720568477-152d9b164e26?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Y2luZW1hfGVufDB8fDB8&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1573747028701-bc903c9de2c4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1579113800032-c38bd7635818?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8dmVnZXRhYmxlc3xlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1517492973030-a02d282206f7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1602934445884-da0fa1c9d3b3?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1546410531-bb4caa6b424d?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1527866959252-deab85ef7d1b?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1538402074774-8e624f3f7e5d?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1514580426463-fd77dc4d0672?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1598285721150-ba05782126c3?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1598397271429-826d45b7bb46?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1604138808764-e873853af44e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1582673937754-8d0cfed5dcc9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTd8fGRpc3RpbGxlcnl8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1567331711402-509c12c41959?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8YmFtYm9vfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1538488881038-e252a119ace7?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8cHVifGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1551089285-329d72552e2f?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8YmlrZSUyMHNob3B8ZW58MHx8MHw%3D&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1513745405825-efaf9a49315f?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8bXVzaWMlMjBzY2hvb2x8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
]

business_owner = [
  "https://images.unsplash.com/photo-1583123810408-23e7b5d1af9f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/flagged/photo-1566064352554-f36ef0ef23b2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1553267751-1c148a7280a1?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fG1hbnxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8d29tYW58ZW58MHx8MHw%3D&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1523278669709-c05da80b6a65?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fG1pZGRsZSUyMGFnZWQlMjBtYW58ZW58MHx8MHw%3D&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1595475038784-bbe439ff41e6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1567850809572-96538630a0ec?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1541670317641-d8294a62294c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1573409852550-139898a59fa0?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1544225917-1bf66feace19?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1517486808906-6ca8b3f04846?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjN8fHBlb3BsZXxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8bWFufGVufDB8fDB8&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1546961329-78bef0414d7c?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8d29tYW58ZW58MHx8MHw%3D&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1580880783095-f6fdf668361e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1604384424869-3df702a9321e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1548449112-96a38a643324?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1580894732444-8ecded7900cd?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1580626172369-f32bc0ec3ce3?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1573497019940-1c28c88b4f3e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=500&q=80",
  "https://images.unsplash.com/photo-1598549762913-0ea144878fa2?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1517705185975-b3301eaa9c8e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1578996953841-b187dbe4bc8a?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1491349174775-aaafddd81942?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8OXx8cGVyc29ufGVufDB8fDB8&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1533578733369-7219f1c25560?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8dmlldG5hbWVzJTIwbWFufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1576670394248-c041349f33fe?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8YmFyJTIwa2VlcGVyfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1530842025973-11b5f5013b2e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8N3x8aGlwc3RlcnxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1521337706264-a414f153a5ed?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8c2luZ2VyJTIwZmVtYWxlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
]

business_first = [
  "https://images.unsplash.com/photo-1473232117216-c950d4ef2e14?ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1535469420027-517674dad7a1?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjV8fHdvbWFuJTIwYm94aW5nfGVufDB8fDB8&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1601280729929-b9e004dd7da7?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8Y29iYmxlcnxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1457972729786-0411a3b2b626?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fG5haWwlMjBzYWxvbnxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1587909209111-5097ee578ec3?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8YmFyYmVyfGVufDB8fDB8&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1466978913421-dad2ebd01d17?ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1485872299829-c673f5194813?ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1531917115039-473b5a388f40?ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1517686469429-8bdb88b9f907?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1562766509-16487a9dd592?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzZ8fGdhbGxlcnl8ZW58MHx8MHw%3D&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1441986300917-64674bd600d8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1559570278-eb8d71d06403?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8Y2luZW1hfGVufDB8fDB8&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1572726729207-a78d6feb18d7?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8Y2FuZGxlfGVufDB8fDB8&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1557844352-761f2565b576?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8dmVnZXRhYmxlc3xlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1538688525198-9b88f6f53126?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1601067095185-b8b73ad7db10?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1588075592446-265fd1e6e76f?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1588075592446-265fd1e6e76f?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1518544897598-d3c0040f1089?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1554200876-56c2f25224fa?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1584984793889-6ac1bbe1a2b3?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1547595628-c61a29f496f0?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1561505053-1f66bac7c75c?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1513638833238-3c89a39aa49f?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8ZGlzdGlsbGVyeXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1582835333661-6fc0a2295585?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fGJhbWJvbyUyMGZ1cm5pdHVyZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8cHVifGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1485965120184-e220f721d03e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OHx8YmlrZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1515168833906-d2a3b82b302a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fG11c2ljJTIwc2Nob29sfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=70"
 ]

business_second = [
  "https://images.unsplash.com/photo-1588776814546-1ffcf47267a5?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8ZGVudGlzdHxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=800&q=60",
  "https://images.unsplash.com/photo-1593352216923-dd279c825ab0?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTd8fHdvbWFuJTIwYm94aW5nfGVufDB8fDB8&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1601280728248-0a60229ed914?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8OHx8Y29iYmxlcnxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1559006045-d34d415b2cff?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mzh8fG5haWwlMjBzYWxvbnxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1503951914875-452162b0f3f1?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8YmFyYmVyfGVufDB8fDB8&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1557366972-e5f841541577?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1547147278-b6acb274b6b5?ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1514066558159-fc8c737ef259?ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1483695028939-5bb13f8648b0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1561926797-fa9e23386fe6?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mzl8fGdhbGxlcnl8ZW58MHx8MHw%3D&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1591085686350-798c0f9faa7f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1527979809431-ea3d5c0c01c9?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjF8fGNpbmVtYXxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1514436598301-27a65f40469f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1566385101042-1a0aa0c1268c?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8dmVnZXRhYmxlc3xlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1519642918688-7e43b19245d8?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1561840884-9dda41ed54e4?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1554721299-e0b8aa7666ce?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1460518451285-97b6aa326961?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1577877777751-3f1ec20a0715?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1554902748-feaf536fc594?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1587556930799-8dca6fad6d41?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1545672432-284607f52207?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1050&q=80",
  "https://images.unsplash.com/photo-1550048192-f5416a1f132a?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=634&q=80",
  "https://images.unsplash.com/photo-1552215147-ebe5751c9eba?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OHx8ZGlzdGlsbGVyeXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60",
  "https://images.unsplash.com/photo-1603505780723-9bdb457b767b?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTF8fGJhbWJvbyUyMGZ1cm5pdHVyZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60",
  "https://images.unsplash.com/photo-1574521091464-a55e7763c1e5?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8cHVifGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1296&q=60",
  "https://images.unsplash.com/photo-1505705694340-019e1e335916?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTZ8fGJpa2V8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1296&q=60",
  "https://images.unsplash.com/photo-1513748128818-f3cb1658102e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzJ8fG11c2ljJTIwc2Nob29sfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1296&q=60"

 ]

business_third = [
  "https://images.unsplash.com/photo-1600170311833-c2cf5280ce49?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTJ8fGRlbnRpc3R8ZW58MHx8MHw%3D&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1475670033737-f3bfd43d2d29?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTV8fGJveGluZyUyMGd5bXxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1557673862-a2a470406a30?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fGRyZXNzJTIwc2hvZXN8ZW58MHx8MHw%3D&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1599206676335-193c82b13c9e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8bWFuaWN1cmV8ZW58MHx8MHw%3D&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1582771498000-8ad44e6c84db?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8YmFyYmVyfGVufDB8fDB8&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1541557435984-1c79685a082b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1523567830207-96731740fa71?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1507914464562-6ff4ac29692f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1509365465985-25d11c17e812?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1581837513225-dab7373ff55c?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mzh8fGdhbGxlcnl8ZW58MHx8MHw%3D&auto=format&fit=crop&w=900&q=60w=600&q=70",
  "https://images.unsplash.com/photo-1582719188393-bb71ca45dbb9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1536440136628-849c177e76a1?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8Y2luZW1hfGVufDB8fDB8&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1556791007-ef20688e3458?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1550989460-0adf9ea622e2?ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1561677978-583a8c7a4b43?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1572375755366-b2f7a668882e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1549737221-bef65e2604a6?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1571260898938-0fe5057e7208?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1573006939324-641d31296356?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1516062423079-7ca13cdc7f5a?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=600&q=70",
  "https://images.unsplash.com/photo-1524250426644-e24b385c291a?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=634&q=80",
  "https://images.unsplash.com/photo-1599654701456-0d4b3a686c28?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1121&q=80",
  "https://images.unsplash.com/photo-1545486304-bdbe5b23dbef?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDR8fGRpc3RpbGxlcnl8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60",
  "https://images.unsplash.com/photo-1533759413974-9e15f3b745ac?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjV8fGJhbWJvbyUyMGZ1cm5pdHVyZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60",
  "https://images.unsplash.com/photo-1497644083578-611b798c60f3?ixid=MXwxMjA3fDB8MHxzZWFyY2h8N3x8cHVifGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1296&q=60",
  "https://images.unsplash.com/photo-1569943228307-a66beab7cd96?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjF8fGJpa2V8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1296&q=60",
  "https://images.unsplash.com/photo-1568688539885-c3d71510937a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDV8fG11c2ljJTIwc2Nob29sfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1296&q=60"
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
  "https://images.unsplash.com/photo-1588776814546-daab30f310ce?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1576511746135-ad5faf5b85be?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1599206676335-193c82b13c9e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1542299278-a78464851ddc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1559466273-d95e72debaf8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1574521091460-429ab1506db1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1548869206-93b036288d7e?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1597388778288-8ae51973e2a3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1540479859555-17af45c78602?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1516762689617-e1cffcef479d?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1533928298208-27ff66555d8d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1599313804992-44e32565fd6d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1579628287525-f88a27409d87?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1599066852653-42826a50b163?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1531913223931-b0d3198229ee?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1508995476428-43d70c3d0042?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1594737626072-90dc274bc2bd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1513885535751-8b9238bd345a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1575005435874-4dc7d3a00955?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1582893561942-d61adcb2e534?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1590903992199-d62079236c91?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1582740598622-e0784ee1f333?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1543132685-cd95dd76c03d?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1583851617967-6a928fe8508b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1603679283701-d00d2859b57c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1553521041-d168abd31de3?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1560643123-9157226100d2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1541961017774-22349e4a1262?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1532904122878-9a1846ec4f76?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1432888498266-38ffec3eaf0a?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1604975701397-6365ccbd028a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1558451635-9ed6e6e9a6e1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1557844352-761f2565b576?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
  "https://images.unsplash.com/photo-1518563222397-1875011bbf5a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
]


Post.all.each_with_index do |post, index|
  file_post = URI.open(post_images[index])
  post.post_image.attach( io: file_post, filename: "post_image-#{index}", content_type: 'image/png')
end


puts "Created #{User.count} users, #{Category.count} categories, #{Business.count} businesses, and #{Post.count} posts"
