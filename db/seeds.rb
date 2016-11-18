Rental.destroy_all
Equipment.destroy_all
User.destroy_all

alexurl = "http://i.forbesimg.com/media/lists/people/brad-pitt_416x416.jpg"
boburl = "https://s-media-cache-ak0.pinimg.com/564x/ef/f2/31/eff23152f2e64d0cfa7b29c837edbc49.jpg"
joshurl = "http://orig08.deviantart.net/94ef/f/2014/259/8/4/josh_hutcherson___liam_hemsworth_by_thatnordicguy-d7zexcs.jpg"


alex = User.create(first_name:"alex", last_name:"spencer", email:"alex@me.com", password:"blabla")
alex.avatar_url = alexurl

josh = User.create(first_name:"josh", last_name:"wilson", email:"josh@me.com", password:"blabla")
josh.avatar_url = joshurl

bob = User.create(first_name:"bob", last_name:"fox", email:"bob@me.com", password:"blabla")
bob.avatar_url = boburl



# EQUIPMENT

ampurl = "http://da1urhpfd469z.cloudfront.net/uploads/advertphotos/16/0405/25216669-433-640x491.jpg"
amp = Equipment.create(title: 'Sweet Amp', description: 'Marshall Amp', user: alex, address: "25 Cuff Point Columbia Road, E2 7PP, London", category: "Guitars", price: 50)
amp.photo_url = ampurl


guitarurl = "http://whyguitar.com/images/electric-guitars-for-sale.jpg"
guitar = Equipment.create(title: 'Guitar', description: 'Gibson electronic guitar', user: bob, address: "Eiffel Tower, Paris", price: 35)
guitar.photo_url = guitarurl

guitar3url = "https://i.ytimg.com/vi/mUimT5lSwfU/maxresdefault.jpg"
guitar3 = Equipment.create(title: 'Fender Guitar', description: 'Great sounding Fender acoustic guitar', user: bob, address: "Aviva stadium, Dublin", price: 20)
guitar3.photo_url = guitar3url

bassurl = "http://guitarphotographer.com/More%20vintage%20guitar%20photos/horizontal/1969-mustang-bass.JPG"
bass = Equipment.create(title: 'Bass guitar', description: 'Awesome Fender Bass', user: josh, address: "Housham hall, matching tye, cm17 0pb", price: 45)
bass.photo_url = bassurl

drumurl = "http://beta-media.drumshop.co.uk/uploads/shop/inventory/images/QKUJR/QK_f.jpg"
drum = Equipment.create(title: 'Drum Kit', description: 'Yahama Drum Kit', user: alex, address: "Old Trafford, Manchester", price: 27)
drum.photo_url = drumurl

violinurl = "https://static1.squarespace.com/static/550ba261e4b0215d222516fe/t/551ecffbe4b0ab1453852e8b/1428082690712/Electric+Violin.jpg?format=1500w"
violin = Equipment.create(title: 'Unique Electric violin', description: 'So Cool, right?', user: josh, address: "Amstel Business Park, Amsterdam", price: 60)
violin.photo_url = violinurl

guitar2url = "http://i.dailymail.co.uk/i/pix/2016/06/11/00/15803B9E000005DC-3636155-image-m-62_1465600595045.jpg"
guitar2 = Equipment.create(title: "Eric Clapton's Guitar!", description: 'I swear it is his!', user: bob, address: "Westminister, London", price: 150)
guitar2.photo_url = guitar2url

djurl = "http://www.jimlaabsmusic.com/images/uploads/karaoke/numark/Numark-NS7-DJ-Turntable-Controller-with-Serato-ITCH-Software6.jpg"
dj = Equipment.create(title: 'Turntable', description: 'Smooth sounding beats', user: josh, address: "White Hart Lane, London", price: 30)
dj.photo_url = djurl

keyboardurl = "https://digclassifieds.com/adpics/56fea18043ebf74c733d83924.jpg"
keyboard = Equipment.create(title: 'Snazzy Keyboard', description: 'Sweet sounding keyboard', user: alex, address: "280 Upper Richmond Road, sw15 6tq", price: 70)
keyboard.photo_url = keyboardurl

micurl = "https://www.raanetwork.org/media/Microphone-on-stage.jpg"
mic = Equipment.create(title: 'Crisp sounding mic', description: 'Classically styled microphone', user: josh, address: "56 Baker Street, London, United Kingdom", price: 15)
mic.photo_url = micurl

pianourl = "http://cdn.wallpapersafari.com/36/64/4TL7yj.jpeg"
piano = Equipment.create(title: 'Classical piano', description: 'Old piano but still sounds great', user: alex, address: "Stockwell, London", price: 105)
piano.photo_url = pianourl

guitar4url = "https://i.ytimg.com/vi/TcewiJGWFLo/maxresdefault.jpg"
guitar4 = Equipment.create(title: 'Jazzy Guitar', description: 'For those that love the smooth sound of jazz', user: bob, address: "Ardara, Donegal", price: 34)
guitar4.photo_url = guitar4url

guitar5url = "http://cdn.mos.musicradar.com/images/artist-news/joe-bonamassa/joe-bonamassa-london-gallagher-guitar-970-80.jpg"
guitar5 = Equipment.create(title: 'Rory Gallagher Guitar', description: 'Great sounding replica of Rory Gallaghers guitar', user: alex, address: "sheffiled", price: 20)
guitar5.photo_url = guitar5url




# Equipment.create(title: 'Acousting Guitar', description: 'Gibson acoustinc guitar')
# Equipment.create(title: 'Bass Guitar', description: 'Some description')




# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
