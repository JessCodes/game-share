#Deletes all
User.delete_all
Game.delete_all
Library.delete_all
Mechanic.delete_all
GameMechanic.delete_all
Vote.delete_all 

#Adds sample users
users = User.create([{username: "Fridis", email: "frida@frida.com", password: "Frida", picture: "
https://media.licdn.com/media/AAEAAQAAAAAAAAiUAAAAJDFhMTA4ZTA2LTA4MjktNDU1NC1hYWE3LWE0OTNlOTg0YzkwMQ.jpg" }, {username: "Kattis", email: "kat@kat.com", password: "Kat", picture: "https://media.licdn.com/media/AAEAAQAAAAAAAAfrAAAAJDQ4YjI5YTUxLTgzNTctNDBjOC04NWJhLWExMjhjMjU0Mzk5Yg.jpg"}, {username: "Jenis", email: "jen@jen.com", password: "Jen", picture: "
https://media.licdn.com/media/AAEAAQAAAAAAAAIBAAAAJDE2OTliNDU5LWU1NmQtNGMyMy05ZTg0LTU4MTM4MTYwMjY4Yg.jpg"},{username: "Jessis", email: "jess@jess.com", password: "Jess", picture: "https://media.licdn.com/media/AAEAAQAAAAAAAAgPAAAAJDc5Njc0YWZiLTkxZmEtNDhjZS04Mzk3LTA0NWNkMjI5ZDVlMg.jpg"}])

frida = User.first

#Adds sample game to Fridaäs library
games= Game.create([{name: "Monopoly", picture: "https://images-na.ssl-images-amazon.com/images/I/915NTWZUtjL._SL1500_.jpg", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", creator_id: frida.id}, {name: "Scrabble", picture: "https://images-na.ssl-images-amazon.com/images/I/81yNDFUbxHL._SL1500_.jpg", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", creator_id: frida.id}, {name: "Risk", picture: "https://images-na.ssl-images-amazon.com/images/I/91jJWHkkA1L._SL1500_.jpg", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", creator_id: frida.id},
  {name: "Cranium", picture: "https://images-na.ssl-images-amazon.com/images/I/41kB7PQANSL.jpg", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", creator_id: frida.id}])

#Adds some games to users' libraries
users.each do |u|
  libraries = Library.create([{game_id: games.sample.id, user_id: u.id}, {game_id: games.sample.id, user_id: u.id}])
end

#Add sample mechanics to games
mechanics = Mechanic.create([{name: "Rock-Paper-Scissors"}, {name: "Campaign / Battle Card Driven"}, {name: "Co-operative Play"}, {name: "Dice Rolling"}, {name: "Grid Movement"}, {name: "Tile Placement"}, {name: "Time Track"}, {name: "Trading"}, {name: "Trick-taking"}, {name: "Voting"}])
games.each do |g|
  game_mechanics = GameMechanic.create([{game_id: g.id ,mechanic_id: mechanics.sample.id }])
end

games.each do |game|
  comments = Comment.create([{title: "Sample Comment Title", body: "Fixie hella thundercats, godard ethical pug chambray aesthetic artisan. DIY selvage butcher retro poke meggings.", user_id: users.sample.id, game_id: game.id}])
end
