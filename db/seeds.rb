AdminUser.create!(email: 'hexer@urhext.com', password: 'imahexer', password_confirmation: 'imahexer')

categories = HexCategory.create([{name:"Cheater (male)"}, {name:"Cheater (female)"}])
Hex.create(hex_text: "Your cheating penis brings such sorrow,\nYou'll shrink three inches before tomorrow.", hex_category:categories.first)
