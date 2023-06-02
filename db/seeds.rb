# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Review.destroy_all
Booking.destroy_all
Power.destroy_all
User.destroy_all


puts "Creating users ..."
goku = { first_name: "Son", last_name: "Goku", address: "439 East district, Earth 7th Universe", pseudo: "Kakarotto", email: "songoku@gmail.com", password: "password", url: "https://pokesumo.com/img/cms/goku.jpg" }
obi_wan = { first_name: "Obi-Wan", last_name: "Kenobi", address: "Tatooine's Jundland Wastes", pseudo: "Obi", email: "obi.one@gmail.com", password: "password", url: "https://leclaireur.fnac.com/wp-content/uploads/2022/03/obi-wan-kenobi.jpeg" }
flash = { first_name: "Barry", last_name: "Allen", address: "1956 Showcase Drive Apt #4", pseudo: "The Flash", email: "theflash@gmail.com", password: "password", url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7oTl9QAIGafvuaPRKTS8WKUcDUwwPgDPVgQ&usqp=CAU" }
link = { first_name: "Link", last_name: "Rinku", address: "Hyrul's fields, Cocorico", pseudo: "Ganondorf-hater", email: "link-hyrul@gmail.com", password: "password", url: "https://www.puissance-zelda.com/img/news/2022/10/tears-of-the-kingdom-link-statue-1.jpg" }
dobby = { first_name: "Dobby", last_name: "L'elfe libre", address: "Nowhere on Earth", pseudo: "FreeDobby", email: "dobby@free.com",password: "password", url: "https://www.journaldugeek.com/content/uploads/2022/11/template-jdg-3.jpg" }
samus = { first_name: "Samus", last_name: "Droid", address: "nowhere in galaxy", pseudo: "Samus", email: "samus@free.com", password: "password", url: "https://cdn.gamekult.com/optim/images/news/30/3050798061/metroid-samus-returns-prend-le-pouvoir-b672ff53__1920_1080__36-172-1614-680.jpg" }
# bowser = { first_name: "Bowser", last_name: "Vilain", address: "Bowser's castle", pseudo: "Bowser", email: "bowser@gmail.com", password: "password", url: "https://cdn.damalion.com/wp-content/uploads/2023/03/SUPER-MARIO-BOWSER-MOVIE.jpg?strip=all&lossy=1&ssl=1" }
thor = { first_name: "Thor", last_name: "Odinson", address: "Asgard royal castel", pseudo: "Thor-hammer", email: "thor@gmail.com", password: "password", url: "https://www.ed92.org/wp-content/uploads/2021/05/THOR-780x406.jpg" }
kirby = { first_name: "Kirby", last_name: "Pink", address: "Swash bros kirby's stage", pseudo: "Kirby-inhale", email: "bowser@gmail.com", password: "password", url: "https://images.radio-canada.ca/q_auto,w_960/v1/ici-info/16x9/kirby-forgotten-island-nintendo.png" }
hisoka = { first_name: "Hisoka", last_name: "Morrow", address: "undergrounds in Tokyo", pseudo: "Hisoka-circus", email: "hisokamorrow@gmail.com", password: "password", url: "https://www.origamigne.com/shop/wp-content/uploads/2020/05/hisoka_origamigne_Migne_Huynh.jpg" }
gon = { first_name: "Gon", last_name: "Freecss", address: "Simple house in Wales island", pseudo: "Gon-nolimit", email: "gonfreecss@gmail.com", password: "password", url: "https://www.manga-city.fr/wp-content/uploads/2021/09/186128-hunter-x-hunter-chimera-ant-arc.jpg" }
manjiro = { first_name: "Manjiro", last_name: "Sano", address: "Asukasa, Tokyo", pseudo: "Manjiro-gang", email: "manjiro@gmail.com", password: "password", url: "https://aniyuki.com/wp-content/uploads/2021/09/aniyuki-manjiro-sano-image-83.jpg" }
thanos = { first_name: "Thanos", last_name: "Titan", address: "Titan planet", pseudo: "Thanos-chaos", email: "thanos@gmail.com", password: "password", url: "https://static.wikia.nocookie.net/marvelstudios/images/a/a5/Thanos_et_les_Pierres.png/revision/latest?cb=20171202123149&path-prefix=fr" }

wolverine = { first_name: "James", last_name: "Howlett", address: "407 Graymalkin Lane, North Salem, New York", pseudo: "Wolverine", email: "snikt1@xaviers.com", password: "password", url: "https://i.pinimg.com/originals/d3/a2/c4/d3a2c4b82ff1903f6178c0d9f0a3c2f9.jpg" }

shulk = { first_name: "Shulk", last_name: "Heir to the Monado", address: "Xenoblade Chronicles", pseudo: "Godcleaver", email: "shulk.zanza@gmail.com", password: "password", url: "https://i.ytimg.com/vi/aekB0vWomxc/hqdefault.jpg" }

piccolo = { first_name: "Piccolo", last_name: "Jr", address: "Mountain Near Gohan's House", pseudo: "Piccolo", email: "piccolo@gmail.com", password: "password", url: "https://www.japanfm.fr/wp-content/uploads/2023/04/piccolo-dragon-ball-z.png" }

solo = { first_name: "Han", last_name: "Solo", address: "Millennium Falcon & Universe", pseudo: "Han Solo", email: "songoku@gmail.com", password: "password", url: "https://sm.ign.com/t/ign_fr/news/s/star-wars-/star-wars-ron-howard-will-take-over-as-han-solo-director_rqt7.1280.jpg" }

naruto = { first_name: "Naruto", last_name: "Uzumaki", address: "Konoha", pseudo: "Naruto", email: "naruto@gmail.com", password: "password", url: "https://static.wikia.nocookie.net/naruto/images/d/dd/Naruto_Uzumaki%21%21.png/revision/latest?cb=20210110160123&path-prefix=fr" }

pikachu = { first_name: "Pika", last_name: "Chu", address: "Bourg Palette", pseudo: "Pikachu", email: "pika.chu@gmail.com", password: "password", url: "https://i.ytimg.com/vi/aekB0vWomxc/hqdefault.jpg" }

spider_man = { first_name: "Peter", last_name: "Parker", address: "20 Ingram Street in Forest Hills, Queens", pseudo: "Spider-man", email: "p.parker@gmail.com", password: "password", url: "https://www.pause-canap.com/media/wysiwyg/univers-spiderman.JPG" }

sora = { first_name: "Sora", last_name: "Openheimer", address: "Destiny Islands", pseudo: "SoraKeyblade", email: "soraopen@gmail.com", password: "password", url: "https://oyster.ignimgs.com/mediawiki/apis.ign.com/kingdom-hearts-3/9/99/Sora.png" }


[goku, obi_wan, flash, link, dobby, samus, thor, kirby, hisoka, gon, manjiro, thanos, spider_man, wolverine, sora, solo, shulk, pikachu, piccolo, naruto].each do |hash|
  user = User.create(
    first_name: hash[:first_name],
    last_name: hash[:last_name],
    address: hash[:address],
    pseudo: hash[:pseudo],
    email: hash[:email],
    password: hash[:password]
  )
  hash[:id] = user.id
  image = URI.open(hash[:url])
  user.profile_photo.attach(io: image, filename: user.pseudo, content_type: 'png')
  user.save
  puts "Created #{user.pseudo}"
end

# Power.destroy_all

kamehameha = { name: "Kamehameha", price: 225000, description: "The Kamehameha is formed when cupped hands are drawn to the user's side and ki is concentrated into a single point (between their cupped hands). The hands are then thrust forward to shoot out a streaming, powerful beam of energy. The blast can also be used, generally under extenuating circumstances, with just one arm or even the feet. In most variants, the user utters the word 'Ka-me-ha-me-HA!!!' as he/she charges and releases the attack.", rarity: "Legendary", universe: "Manga", user: goku, url: "https://www.parismanga.com/wp-content/uploads/2022/03/kamehameha-1024x623.jpg" }

lightsaber = { name: "Lightsaber", price: 95000, description: "Lightsabers consisted of a plasma blade, powered by a kyber crystal, that was emitted from a usually metal hilt and could be shut off at will. It was a weapon that required skill and training, and was greatly enhanced when used in conjunction with the Force.", rarity: "Epic", universe: "Saga", user: obi_wan, url:"https://ae01.alicdn.com/kf/Sd00e4efc5d4846138b6a4f32858c6cb6w/LightSaberstudio-Obi-Wan-Xenopixel-Lightsaber-Metal-Hilt-FOC-Force-rapDueling-MF-ite-document-Change-Sensitive-Smooth.jpg"}

superspeed = { name: "Super Speed", price: 175000, description: "The power can allow the customer to move so fast that he can run around the world in a fraction of a second.", rarity: "Epic", universe: "Comics", user: flash, url:"https://i.ytimg.com/vi/aC6NwmFI99Y/maxresdefault.jpg"}

master_sword = { name: "Master Sword", price: 80000, description: "The Master Sword is a divine, magic sword and the signature weapon of Link, the hero of The Legend of Zelda series. It has become a defining aspect of Link's identity alongside the Hylian Shield.[1] The majority of The Legend of Zelda video games follow a similar story arc that involves Link starting the game with a simple weapon and embarking on a journey that eventually leads him to recovering the Master Sword. Once he obtains it, the sword makes Link much stronger in combat so that the player has greater capability to defeat the main antagonist at the end of the game.", rarity: "Rare", universe: "Video games", user: link, url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlFjLv_SALoQU-9tMlxG75ddMs9xKDy5R2RQ&usqp=CAU"}

transplaner = { name: "Transplaner", price: 20000, description: "Transplaner is a non-verbal transportation spell that allows to travel instantly and appear at another location.", rarity: "Uncommon", universe: "Saga", user: dobby, url:"https://i.ytimg.com/vi/WP9ejd7koDw/maxresdefault.jpg" }

armor = { name: "Samus Armor", price: 24000, description: "Transplaner is a non-verbal transportation spell that allows to travel instantly and appear at another location.", rarity: "Rare", universe: "Video games", user: samus, url:"https://metroid.nintendo.com/dread/assets/images/samus/suit-up/2.VariaSuit.jpg" }

# fire = { name: "Fire of Bowser", price: 8000, description: "Transplaner is a non-verbal transportation spell that allows to travel instantly and appear at another location.", rarity: "Uncommon", universe: "Video games", user: bowser, url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHpCXEf05a7m7_LxPJ3xLnAxppcFrtj5A8Wg&usqp=CAU" }

hammer = { name: "Hammer of gods", price: 320000, description: "Transplaner is a non-verbal transportation spell that allows to travel instantly and appear at another location.", rarity: "Legendary", universe: "Comics", user: thor, url:"https://www.outfit4events.com/underwood/download/images/thorovo-kladivo-1.jpg" }

storm = { name: "Storms", price: 120000, description: "Transplaner is a non-verbal transportation spell that allows to travel instantly and appear at another location.", rarity: "Epic", universe: "Comics", user: thor, url:"https://theshadowsquadron.files.wordpress.com/2017/02/thor14-e1494718237113.jpg" }

inhale = { name: "Inhale's Kirby", price: 12000, description: "Transplaner is a non-verbal transportation spell that allows to travel instantly and appear at another location.", rarity: "Uncommon", universe: "Video games", user: kirby, url:"https://www.serebii.net/smashbrosultimate/characters/kirbyneutral.jpg" }

card = { name: "Meta use", price: 10000, description: "Transplaner is a non-verbal transportation spell that allows to travel instantly and appear at another location.", rarity: "Uncommon", universe: "Manga", user: hisoka, url:"https://static.wikia.nocookie.net/vsbattles/images/9/92/Bungee_gUm.png/revision/latest/scale-to-width-down/1200?cb=20190926031833" }

fish = { name: "Meta use", price: 10000, description: "Transplaner is a non-verbal transportation spell that allows to travel instantly and appear at another location.", rarity: "Uncommon", universe: "Manga", user: gon, url:"https://i.pinimg.com/564x/71/f4/49/71f449e09c42d2d7d4b090914c3f9520.jpg" }

moto = { name: "Moto from Tokyo", price: 2000, description: "Transplaner is a non-verbal transportation spell that allows to travel instantly and appear at another location.", rarity: "Uncommon", universe: "Manga", user: manjiro, url:"https://w0.peakpx.com/wallpaper/3/886/HD-wallpaper-manjiro-sano-mikey-automotive-lighting-motorcycle-hanagaki-takemichi-tokyo-revengers-draken-ken-ryuguji.jpg" }

gant = { name: "gauntnet", price: 900000000, description: "The gauntlet itself is simply a glove or similar tool designed to harness the power of the Infinity Stones. With all six gems in place, the wearer of the gauntlet has the power to do whatever they want — read minds, steal souls, bend time, alter reality, manipulate energy, or travel through space (teleportation)", rarity: "Legendary", universe: "Saga", user: thanos, url:"https://hoopnod.com/wp-content/uploads/2018/10/gant-thanos-une-699-x-388.jpg" }

monado = { name: "Monado III", price: 150000, description: "The Monado is a powerful energy blade that can manipulate the ether around it, and by doing so, change the material and immaterial shape of the world. One's ability to control the Monado depends on the strength of will of its user; most users who try to use the sword cannot control it.", rarity: "Epic", universe: "Video games", user: shulk, url:"https://i.redd.it/9f2xbwyzfuj11.jpg" }

makanko_sappo = { name: "Makankô Sappô", price: 125000, description: "This technique consists of accumulating all of one's energy at the tips of two fingers, the index and middle fingers, and throwing it at the opponent in the form of a spiral energy beam. The big flaw of this technique is the time needed to accumulate the energy: during this moment, the person must put both fingers on their forehead and concentrate, resulting in total vulnerability.", rarity: "Epic", universe: "Manga", user: piccolo, url: "https://static.wikia.nocookie.net/dragonuniverse/images/f/fb/MakankosappoMovie.png/revision/latest?cb=20170313153810"}

shadow_clone_technique = { name: "Shadow Clone Technique", price: 75000, description: "This jutsu allows the user to create one or more copies of themselves. The user's chakra is evenly divided between themselves and their clones: creating one clone will give it half the user's chakra, creating two clones will give each a third of the user's chakra, and so on. Depending on how much chakra the user has and how many clones they make, this rapid depletion of their reserves can be dangerous..", rarity: "Epic", universe: "Manga", user: naruto, url: "https://static.wikia.nocookie.net/fear-world/images/0/0b/Naruto%27s_signature_jutsu.jpg/revision/latest/scale-to-width-down/400?cb=20140424232855"}

pistol = { name: "Han' Solo's Pistol", price: 5000, description: "This blaster pistol is essentially intended to eliminate enemies such as stormtroopers or rebel finds, an extremely famous item in the galaxy.", rarity: "Uncommon", universe: "Saga", user: solo, url: "https://static.wikia.nocookie.net/frstarwars/images/4/48/Han_Solo.jpg/revision/latest?cb=20160514115511"}

web_shooter = { name: "Web shooter", price: 99999, description: "Spider-Man's web-shooters are, probably, his most symbolic accessories, after his costume itself. After discovering his powers, Peter Parker came to the conclusion that a spider had to produce a web and, having failed to acquire this ability, he set out to repair the situation artificially. After several hours of work, he developed a special synthetic polymer, particularly adhesive and possessing properties similar to an organic web.", rarity: "Epic", universe: "Comics", user: spider_man, url: "https://www.francetvinfo.fr/pictures/eVUWdJEWGBU1y2BcCr0shfporPQ/1200x1200/2019/04/11/spiderman_c.jpg" }

keyblade = { name: "Keyblade", price: 225000, description: "The keyblades are mysterious weapons that are heavily featured in the Kingdom Hearts series. Wielded by the main character, Sora, as well as a number of other important characters, the Keyblade is a main part of the battle between Darkness and Light.", rarity: "Legendary", universe: "Video games", user: sora, url: "https://www.japanzon.com/143193-product_hd/square-enix-kingdom-hearts-light-up-keyblade-kingdom-chain.jpg" }

[kamehameha, lightsaber, superspeed, master_sword, transplaner, makanko_sappo, shadow_clone_technique, web_shooter, monado, gant, fish, keyblade, moto, card, inhale, storm, hammer, armor].each do |hash|
  power = Power.create!(
    name: hash[:name],
    price: hash[:price],
    description: hash[:description],
    rarity: hash[:rarity],
    universe: hash[:universe],
    user: User.find(hash[:user][:id])
  )
  image = URI.open(hash[:url])
  power.photo.attach(io: image, filename: power.name, content_type: 'png')
  power.save
  puts "Created #{power.name}"
end


puts "Finished!"

# past_confirmed = []

# 10.times do
#   start = Date.today + rand(1..20)
#   end_date = start + rand(1..20)
#   power = Power.all.sample
#   price = ((end_date - start) / (1000 * 3600 * 24)) * power.price
#   booking = Booking.create(
#     start_date: start,
#     end_date: end_date,
#     total_price: price,
#     power: power,
#     user: User.all.sample,
#     status: Booking::STATUS.sample
#   )
#   past_confirmed << booking if booking.status == 'confirmed'
# end

# past_confirmed.each do |book|
#   10.times do

#   end
# end
