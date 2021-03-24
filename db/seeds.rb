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
  {
    phrase: 'duck',
    category: animals
  },
  {
    phrase: 'football',
    category: sports
  },
  {
    phrase: 'finding nemo',
    category: movies
  },
  {
    phrase: 'windshield',
    category: cars
  },
  {
    phrase: 'computer',
    category: technology
  }
])

GameRecord.create({
  username: 'chris',
  elapsed_time: 1.2,
  phrase_id: Phrase.first.id
})