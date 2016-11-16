Rental.destroy_all
Equipment.destroy_all
User.destroy_all

alex = User.create(first_name:"alex", last_name:"spencer", email:"alex@me.com", password:"blabla")
drumurl = "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fb/Terry_Bozzio_drums.jpg/500px-Terry_Bozzio_drums.jpg"
drum = Equipment.create(title: 'Drum Kit', description: 'Yahama Drum Kit', user: alex)
drum.photo_url = drumurl

bob = User.create(first_name:"bob", last_name:"fox", email:"bob@me.com", password:"blabla")
guitar = Equipment.create(title: 'Guitar', description: 'Gibson electronic guitar', user: bob)

josh = User.create(first_name:"josh", last_name:"wilson", email:"josh@me.com", password:"blabla")
bassurl = "http://sherman.ninja/resonance/wp-content/uploads/2014/10/bassguitar2.jpg"
bass = Equipment.create(title: 'Bass guitar', description: 'Some description', user: josh)
bass.photo_url = bassurl


# Equipment.create(title: 'Acousting Guitar', description: 'Gibson acoustinc guitar')
# Equipment.create(title: 'Bass Guitar', description: 'Some description')




# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
