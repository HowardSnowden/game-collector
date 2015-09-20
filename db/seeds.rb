# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


   game = Game.create!(title:'GTA5')
   wiiuGame = Game.create!(title:'Smash Brothers Wii U') 
  ff7 = Game.create!(title:'Final Fantasy Vii')
   ps3 = System.create!(name: 'PS3')
   ps4 = System.create!(name: 'PS4')
   xbox360 = System.create!(name:'Xbox360')
   xboxone = System.create!(name:'XboxOne')
   wii = System.create!(name:'Wii')
   snes = System.create!(name:'SNES')
   wiiu = System.create!(name: 'Wii U')
  ps2 = System.create!(name: 'PS2')
 ps = System.create!(name:'Playstation')
  ps3Game = ps3.system_games.create!(game: game)
  ps4Game = ps4.system_games.create!(game: game)
  wiiugame = wiiu.system_games.create!(game:wiiuGame)
  ff7game = ps.system_games.create!(game:ff7)
   user = User.create!({name:'Damien', email:'dumbemail@gmail.com', password:'DumbPassword' })
   user.user_games.create!(system_game:ps3Game)
    user.user_games.create!(system_game:ps4Game)
   user.user_games.create!(system_game:ffygame)
   