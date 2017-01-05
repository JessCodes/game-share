#Deletes all
User.delete_all
Game.delete_all

#Adds sample users
users = User.create([{username: "Fridis", email: "frida@frida.com", password: "Frida", picture: "
https://media.licdn.com/media/AAEAAQAAAAAAAAiUAAAAJDFhMTA4ZTA2LTA4MjktNDU1NC1hYWE3LWE0OTNlOTg0YzkwMQ.jpg" }, {username: "Kattis", email: "kat@kat.com", password: "Kat", picture: "https://media.licdn.com/media/AAEAAQAAAAAAAAfrAAAAJDQ4YjI5YTUxLTgzNTctNDBjOC04NWJhLWExMjhjMjU0Mzk5Yg.jpg"}, {username: "Jenis", email: "jen@jen.com", password: "Jen", picture: "
https://media.licdn.com/media/AAEAAQAAAAAAAAIBAAAAJDE2OTliNDU5LWU1NmQtNGMyMy05ZTg0LTU4MTM4MTYwMjY4Yg.jpg"},{username: "Jessis", email: "jess@jess.com", password: "Jess", picture: "https://media.licdn.com/media/AAEAAQAAAAAAAAgPAAAAJDc5Njc0YWZiLTkxZmEtNDhjZS04Mzk3LTA0NWNkMjI5ZDVlMg.jpg"}])

frida = User.first

#Adds sample games
games= Game.create([{name: "Monopoly", picture: "https://images-na.ssl-images-amazon.com/images/I/915NTWZUtjL._SL1500_.jpg", creator_id: frida.id}, {name: "Scrabble", picture: " https://images-na.ssl-images-amazon.com/images/I/81yNDFUbxHL._SL1500_.jpg", creator_id: frida.id}, {name: "Risk", picture: "https://images-na.ssl-images-amazon.com/images/I/91jJWHkkA1L._SL1500_.jpg", creator_id: frida.id}, {name: "Cranium", picture: "https://images-na.ssl-images-amazon.com/images/I/41kB7PQANSL.jpg", creator_id: frida.id}])

#Adds some games to users library
users.each do |u|
  libraries = Library.create([{game_id: games.sample.id, user_id: u.id}, {game_id: games.sample.id, user_id: u.id}])  
end
