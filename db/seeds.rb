Equipment.destroy_all
alex = User.create(first_name:"alex", last_name:"alex", email:"alex@me.com", password:"alfsnjfsdfndsfex")
Equipment.create(title: 'Drum Kit', description: 'Yahama Drum Kit', user: User.first)

bob = User.create(first_name:"bob", last_name:"alex", email:"alex@me.com", password:"bla")
Equipment.create(title: 'Guitar', description: 'Gibson electronic guitar', user: User.first)

josh = User.create(first_name:"josh", last_name:"josh", email:"josh@me.com", password:"blabla")
Equipment.create(title: 'Bass guitar', description: 'Some description', user: User.first)


# Equipment.create(title: 'Acousting Guitar', description: 'Gibson acoustinc guitar')
# Equipment.create(title: 'Bass Guitar', description: 'Some description')




# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
