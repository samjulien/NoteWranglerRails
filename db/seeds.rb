# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Note.create!([
  {
    id: 1,
    title: 'Test',
    description: 'This is a test.',
    link: 'http://www.twitter.com',
    content: 'This is a test of the content.'
  },
  {
    id: 2,
    title: 'Test Too',
    description: 'This is a test too.',
    link: 'http://www.google.com',
    content: 'This is a test of the content too.'
  }
])