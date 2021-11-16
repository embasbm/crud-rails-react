# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Beer.create(brand: 'Double Stout', style: 'Stout', country: 'England', quantity: 54)
Beer.create(brand: 'Spaten', style: 'Helles', country: 'Germany', quantity: 3)
Beer.create(brand: 'Newcastle', style: 'Brown ale', country: 'UK', quantity: 12)
