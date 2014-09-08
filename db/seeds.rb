# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = HexCategory.create([{name:"Cheater (male)"}, {name:"Cheater (female)"}])
Hex.create(hex_text: "Your cheating penis brings such sorrow,\nYou'll shrink three inches before tomorrow.", hex_category:categories.first)
