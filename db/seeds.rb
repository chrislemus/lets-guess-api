# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Phrase.delete_all
GameRecord.delete_all
Category.delete_all
sports = Category.create({name: 'sports'})
movies = Category.create({name: 'movies'})
animals = Category.create({name: 'animals'})
cars = Category.create({name: 'cars'})
technology = Category.create({name: 'technology'})


Phrase.create([
  { phrase: 'duck', category: animals },
  { phrase: 'cow', category: animals },
  { phrase: 'chicken', category: animals },
  { phrase: 'dog', category: animals },
  { phrase: 'elephant', category: animals },
  { phrase: 'zebra', category: animals },
  { phrase: 'leopard', category: animals },
  { phrase: 'pig', category: animals },
  { phrase: 'bear', category: animals },
  { phrase: 'owl', category: animals },
  { phrase: 'football', category: sports },
  { phrase: 'soccer', category: sports },
  { phrase: 'chicago bulls', category: sports },
  { phrase: 'fifa', category: sports },
  { phrase: 'super bowl', category: sports },
  { phrase: 'baseball', category: sports },
  { phrase: 'tennis', category: sports },
  { phrase: 'miami heat', category: sports },
  { phrase: 'lakers', category: sports },
  { phrase: 'game time', category: sports },
  { phrase: 'referee', category: sports },
  { phrase: 'team', category: sports },
  { phrase: 'finding nemo', category: movies },
  { phrase: 'die hard', category: movies },
  { phrase: 'the avengers', category: movies },
  { phrase: 'spiderman', category: movies },
  { phrase: 'jurassic park', category: movies },
  { phrase: 'lion king', category: movies },
  { phrase: 'ghodtbusters', category: movies },
  { phrase: 'star wars', category: movies },
  { phrase: 'matrix', category: movies },
  { phrase: 'alien', category: movies },
  { phrase: 'the wizard of oz', category: movies },
  { phrase: 'windshield', category: cars },
  { phrase: 'wheel', category: cars },
  { phrase: 'ferrari', category: cars },
  { phrase: 'rolls royce', category: cars },
  { phrase: 'toyota', category: cars },
  { phrase: 'tesla', category: cars },
  { phrase: 'gas pedal', category: cars },
  { phrase: 'windshield wipers', category: cars },
  { phrase: 'gas', category: cars },
  { phrase: 'oil', category: cars },
  { phrase: 'door handle', category: cars },
  { phrase: 'trunk', category: cars },
  { phrase: 'computer',  category: technology },
  { phrase: 'programming',  category: technology },
  { phrase: 'internet',  category: technology },
  { phrase: 'wifi',  category: technology },
  { phrase: 'social network',  category: technology },
  { phrase: 'game console',  category: technology },
  { phrase: 'monitor',  category: technology },
  { phrase: 'keyboard',  category: technology },
  { phrase: 'sound system',  category: technology },
  { phrase: 'google',  category: technology },
  { phrase: 'tv',  category: technology },
  { phrase: 'solar panel',  category: technology },
  { phrase: 'phone',  category: technology },
])

