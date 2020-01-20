# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

stephen = User.create(name: 'Stephen', email: 'abc@gmail.com', password_digest: 'password', alias: 'Pastel', about: 'It me')
sarah = User.create(name: 'Sarah', email:'123@gmail.com', password_digest: 'password', alias: 'Wim', about: 'It not me')
alexa = User.create(name: 'Alexa', email: 'email@gmail.com', password_digest: 'password', alias: 'State', about: 'Poop')

dis1 = Discipline.create(name: "Musician", user_id: stephen.id)
med1 = Medium.create(name: "Drums", discipline_id: dis1.id)

project1 = Project.create(description:'Make an art', completed?: false, user_id: stephen.id)

Collaboration.create(user_id: sarah.id, project_id: project1.id)
Collaboration.create(user_id: alexa.id, project_id: project1.id)

Review.create(content: "Loves reptiles, is the best", rating: 5, reviewer_id: stephen.id, reviewee_id: sarah.id)

puts "Seeded"