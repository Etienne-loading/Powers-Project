# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Creating users ..."
goku = { first_name: "Son", last_name: "Goku", address: "439 East district, Earth 7th Universe", pseudo: "Kakarotto", email: "songoku@gmail.com", password: "password" }
obi_wan = { first_name: "Obi-Wan", last_name: "Kenobi", address: "Tatooine's Jundland Wastes", pseudo: "Obi", email: "obi.one@gmail.com", password: "password" }
flash = { first_name: "Barry", last_name: "Allen", address: "1956 Showcase Drive Apt #4", pseudo: "The Flash", email: "theflash@gmail.com", password: "password" }
link = { first_name: "Link", last_name: "Rinku", address: "Hyrul's fields, Cocorico", pseudo: "Ganondorf-hater", email: "link-hyrul@gmail.com", password: "password" }
dobby = { first_name: "Dobby", last_name: "L'elfe libre", address: "Nowhere on Earth", pseudo: "FreeDobby", email: "dobby@free.com",password: "password" }

[goku, obi_wan, flash, link, dobby].each do |attributes|
  user = User.create!(attributes)
  puts "Created #{user.pseudo}"
end

kamehameha = { name: "Kamehameha", price: 225000, description: "The Kamehameha is formed when cupped hands are drawn to the user's side and ki is concentrated into a single point (between their cupped hands). The hands are then thrust forward to shoot out a streaming, powerful beam of energy. The blast can also be used, generally under extenuating circumstances, with just one arm or even the feet. In most variants, the user utters the word 'Ka-me-ha-me-HA!!!' as he/she charges and releases the attack.", rarity: "Legendary", category: "Dragon Ball", universe: "Manga", user_id: 2 }

lightsaber = { name: "Lightsaber", price: 95000, description: "Lightsabers consisted of a plasma blade, powered by a kyber crystal, that was emitted from a usually metal hilt and could be shut off at will. It was a weapon that required skill and training, and was greatly enhanced when used in conjunction with the Force.", rarity: "Epic", category: "Star Wars", universe: "Saga", user_id: 3 }

superspeed = { name: "Super Speed", price: 175000, description: "The power can allow the customer to move so fast that he can run around the world in a fraction of a second.", rarity: "Epic", category: "Flash", universe: "Comics", user_id: 4 }


master_sword = { name: "Master Sword", price: 80000, description: "The Master Sword is a divine, magic sword and the signature weapon of Link, the hero of The Legend of Zelda series. It has become a defining aspect of Link's identity alongside the Hylian Shield.[1] The majority of The Legend of Zelda video games follow a similar story arc that involves Link starting the game with a simple weapon and embarking on a journey that eventually leads him to recovering the Master Sword. Once he obtains it, the sword makes Link much stronger in combat so that the player has greater capability to defeat the main antagonist at the end of the game.", rarity: "Rare", category: "The Legend of Zelda", universe: "Video games", user_id: 5 }

transplaner = { name: "Transplaner", price: 20000, description: "Transplaner is a non-verbal transportation spell that allows to travel instantly and appear at another location.", rarity: "Uncommon", category: "Hogwart", universe: "Saga", user_id: 6 }

[kamehameha, lightsaber, superspeed, master_sword, transplaner].each do |attributes|
  power = Power.create!(attributes)
  puts "Created #{power.name}"
end
puts "Finished!"
