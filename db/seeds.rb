# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Offer.delete_all
Comment.delete_all
offer = Offer.create(author: 'Zaets', title: 'Lorem ipsum 1', description: 'I like to move it move it. She like to move it move it.')
offer.comments.create!(author: 'Volk', text: 'Vof vof. Vof vof.')