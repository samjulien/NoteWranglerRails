# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Note.destroy_all

jeff = User.create!(
    name: 'Jeffery Zeldman',
    bio: 'Founder, Happy Cog studios. Author, Designing With Web Standards. Publisher, A List Apart, A Book Apart.',
    twitter_handle: '@zeldman',
    site: 'zeldman.com',
    email: 'jeffrey@zeldman.com'
)
gregg = User.create!(
    name: 'Gregg Pollack',
    bio: 'Founder of Envy Labs, Code School, Orlando Ruby Users Group, BarCamp Orlando, and the Orlando Tech Events newsletter.',
    twitter_handle: '@greggpollack',
    site: 'EnvyLabs.com',
    email: 'gregg@codeschool.com'
)

Note.create!([
  {
    title: 'Test',
    description: 'This is a test.',
    link: 'http://www.twitter.com',
    content: 'This is a test of the content.',
    user: jeff
  },
  {
    title: 'Test Too',
    description: 'This is a test too.',
    link: 'http://www.google.com',
    content: 'This is a test of the content too.',
    user: gregg
  },
  {
    title: 'Test Three',
    description: 'This is a test three.',
    link: 'http://www.google.com',
    content: 'This is a test of the content three.',
    user: gregg
  }
])