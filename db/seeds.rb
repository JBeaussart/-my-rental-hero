# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
puts "Cleaning database..."
SuperHero.destroy_all
User.destroy_all

puts "Creating User..."
jerem = User.create!( first_name: 'jeremy', last_name: 'beaussart', email: 'jerem@gmail.fr', password: '123456', company: 'gg')
quentin = User.create!( first_name: 'quentin', last_name: 'bonnafet', email: 'quentin@gmail.fr', password: '123456')
thomas = User.create!( first_name: 'thomas', last_name: 'pozzobon', email: 'thomas@gmail.fr', password: '123456')
puts "Creating SuperHeros..."
ironman = SuperHero.create!( nickname: 'Iron man' ,  description: 'Je suis un genie milliardaire', user_id: jerem.id )
captain = SuperHero.create!( nickname: 'Captain America' ,  description: 'Je suis un vieux mais solide', user_id: quentin.id )
faucon = SuperHero.create!( nickname: 'Faucon' ,  description: 'Je sert à rien', user_id: thomas.id )

puts "Finished!"
