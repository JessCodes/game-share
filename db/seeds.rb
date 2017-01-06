#Deletes all
User.delete_all
Game.delete_all
Library.delete_all
Mechanic.delete_all
GameMechanic.delete_all

#Adds sample users
users = User.create([
  {username: "Frida", email: "frida@frida.com", password: "Frida", picture: "
https://media.licdn.com/media/AAEAAQAAAAAAAAiUAAAAJDFhMTA4ZTA2LTA4MjktNDU1NC1hYWE3LWE0OTNlOTg0YzkwMQ.jpg" },
{username: "Katrina", email: "kat@kat.com", password: "Kat", picture: "https://media.licdn.com/media/AAEAAQAAAAAAAAfrAAAAJDQ4YjI5YTUxLTgzNTctNDBjOC04NWJhLWExMjhjMjU0Mzk5Yg.jpg"},
{username: "Jen", email: "jen@jen.com", password: "Jen", picture: "
https://media.licdn.com/media/AAEAAQAAAAAAAAIBAAAAJDE2OTliNDU5LWU1NmQtNGMyMy05ZTg0LTU4MTM4MTYwMjY4Yg.jpg"},
{username: "Jess", email: "jess@jess.com", password: "Jess", picture: "https://media.licdn.com/media/AAEAAQAAAAAAAAgPAAAAJDc5Njc0YWZiLTkxZmEtNDhjZS04Mzk3LTA0NWNkMjI5ZDVlMg.jpg"},
{username: "Derek", email: "derek@derek.com", password: "Derek", picture: "
https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAAZfAAAAJGU4ZjRlNTczLTg5NjMtNDgyNS1hZmE0LTNjMDM3MjNjYzA0Mg.jpg" },
{username: "Jin", email: "jin@jin.com", password: "Jin", picture: "https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAAfZAAAAJDI2OTlkNGZlLTI4MDktNGQ5MS05MWM0LWI3NTRkMGIyNDRlZA.jpg"},
{username: "Megan", email: "megan@megan.com", password: "Megan", picture: "
https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAATLAAAAJGZkNmE1NTEzLTBmZTUtNDlhMy04NTQ2LWIwZjUxMzQxODljOA.jpg"},
{username: "Anthony", email: "anthony@anthony.com", password: "Anthony", picture: "https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAAeXAAAAJDFiYWExNTU3LWE1NTEtNGQ4NS1hMzRlLTE0ZjJjOTA4ZjA3YQ.jpg"},
{username: "James", email: "james@james.com", password: "James", picture: "
https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAAkfAAAAJDE2ZDM1MjUyLWE4MDMtNDJhOS1hMTJlLTY4NGY2ODA4YjkzNA.jpg" },
{username: "Katie", email: "katie@katie.com", password: "Katie", picture: "https://media.licdn.com/mpr/mpr/shrinknp_400_400/AAEAAQAAAAAAAAdGAAAAJDMwNzEzMjhjLTZlMjgtNDU1Ny1iMzdhLTdmNjFlNmU3YjVlMg.jpg"},
])

#Adds sample game to Fridaäs library
games= Game.create([{name: "Exploding Kittens", picture: "https://images-na.ssl-images-amazon.com/images/I/81gF5y9IT3L._SX355_.jpg", description: "Exploding Kittens is a card game for people who are into kittens and explosions and laser beams and sometimes goats.
Family-friendly, party game for 2-5 players (up to 9 players when combined with any other deck).
This is the most-backed project in Kickstarter history and all cards feature illustrations by The Oatmeal.
Includes 56 cards (2.5 x 3.5 inches), box, and instructions.
This box, like 99.99% of boxes, does not meow.", creator_id: users.sample.id},


  {name: "Scrabble", picture: "https://images-na.ssl-images-amazon.com/images/I/81yNDFUbxHL._SL1500_.jpg", description: "LScrabble, the classic crossword game, is full-on fun for friends and family. You can feel the excitement begin as soon as you rack up your letters, choose a great word, and hope to land on a triple-word score. Play the popular Scrabble game the classic way as you take on opponents head-to-head, for a challenging and fun time whether you're a beginner or an expert.
Every Letter Counts:
Scrabble is the ultimate crossword game in which every letter counts. Grab your friends and take turns forming words on the board. After playing your turn, count the value of all the letters in every new word that you formed.
Don't forget the bonus points for placing letters on premium squares. Double letter! Triple word! It's all about playing words on the high-scoring hotspots to get ahead. Played a Q on a triple-letter score? Your score just got a lot bigger. Use all your 7 tiles in one turn, and score a whopping 50 points in addition to your word score! Knowing the rules and a few tricks will help you to score more points and improve your chances of winning. At the end of the game, the player with the highest score wins.
Hasbro Gaming and all related logos, properties and characters are trademarks of Hasbro. Scrabble is a trademark of Hasbro in the US and Canada only.
Many Ways To Play:
Whether you love to play board games one-on-one, or have a more social streak, Scrabble is the game for you. You can choose to play solo and rely on your own strategy and smarts, or turn up the excitement and play in teams to brainstorm high-scoring words. Or play finish-line Scrabble so mixed-level players can join in the fun by competing for a score that you decide on – beginners can win by scoring fewer points than experts. Will calculated strategy prevail, or could the luck of the draw win you the game? You never know, but any way you play, this popular word game keeps the challenges fresh and fun.
Classic Crossword Game for Friends and Family:
The Scrabble game is a perfect way to spend time with friends and family, whether it's a quiet night at home or a party at a friend's house. This competitive word game can make any event more interactive, fun and interesting.
Gameboard, 100 letter tiles, 4 tile racks, 1 drawstring letter bag, and game guide.", creator_id: users.sample.id},
  {name: "Risk", picture: "https://images-na.ssl-images-amazon.com/images/I/91jJWHkkA1L._SL1500_.jpg", description: "
Take over the world in this game of strategy conquest, now with updated figures and improved Mission cards. In the Risk game, the goal is simple: players aim to conquer their enemies’ territories by building an army, moving their troops in, and engaging in battle. Depending on the roll of the dice, a player will either defeat the enemy or be defeated. This exciting game is filled with betrayal, alliances, and surprise attacks. On the battlefield, anything goes! Defeat all of the enemy troops in a territory to conquer that territory and get one step closer to global conquest! The player who completes his or her secret mission first -- and reveals the Secret Mission card to prove it -- wins. And remember…when it comes to taking over the world, it’s all about who is willing to take the biggest Risk.", creator_id: users.sample.id},
  {name: "Cranium", picture: "https://images-na.ssl-images-amazon.com/images/I/41kB7PQANSL.jpg", description: "CRANIUM is the outrageously fun award-winning board game packed with something-for-everyone fun!  Whether you're an aspiring actor, artist, data hound, or wordsmith, CRANIUM gives everyone a chance to shine. Features 600 all-new cards for outrageous fun, and new 3-in-1 foldout game board lets you choose how long you play!", creator_id: users.sample.id},
  {name: "Cards Against Humanity", picture: "https://images-na.ssl-images-amazon.com/images/I/811zWwDM7kL._SY550_.jpg", description: "550 cards (460 White cards and 90 Black cards)
Over 13 duodecillion possible rounds (10^40) with 6 players
Professionally printed on premium playing cards
Includes game rules and alternate rules, shrink-wrapped in a custom box
American's #1 gerbil coffin", creator_id: users.sample.id},
{name: "Dominion", picture: "https://cf.geekdo-images.com/7mkW_JrUx0PSa4Ame3zzsLE0BVY=/fit-in/246x300/pic394356.jpg", description: "In Dominion, each player starts with an identical, very small deck of cards. In the center of the table is a selection of other cards the players can buy as they can afford them. Through their selection of cards to buy, and how they play their hands as they draw them, the players construct their deck on the fly, striving for the most efficient path to the precious victory points by game end.

Dominion is not a CCG, but the play of the game is similar to the construction and play of a CCG deck. The game comes with 500 cards. You select 10 of the 25 Kingdom card types to include in any given play—leading to immense variety.", creator_id: users.sample.id},

{name: "Pandamic lecacy", picture: "https://cf.geekdo-images.com/n8626bWQOoE_1nqvLUXi_6QfYO0=/fit-in/246x300/pic2452831.png", description: "Pandemic Legacy is a co-operative campaign game, with an overarching story-arc played through 12-24 sessions, depending on how well your group does at the game. At the beginning, the game starts very similar to basic Pandemic, in which your team of disease-fighting specialists races against the clock to travel around the world, treating disease hotspots while researching cures for each of four plagues before they get out of hand.

During a player's turn, they have four actions available, with which they may travel around in the world in various ways (sometimes needing to discard a card), build structures like research stations, treat diseases (removing one cube from the board; if all cubes of a color have been removed, the disease has been eradicated), trade cards with other players, or find a cure for a disease (requiring five cards of the same color to be discarded while at a research station). Each player has a unique role with special abilities to help them at these actions.

After a player has taken their actions, they draw two cards. These cards can include epidemic cards, which will place new disease cubes on the board, and can lead to an outbreak, spreading disease cubes even further. Outbreaks additionally increase the panic level of a city, making that city more expensive to travel to.

Each month in the game, you have two chances to achieve that month's objectives. If you succeed, you win and immediately move on to the next month. If you fail, you have a second chance, with more funding for beneficial event cards.

During the campaign, new rules and components will be introduced. These will sometimes require you to permanently alter the components of the game; this includes writing on cards, ripping up cards, and placing permanent stickers on components. Your characters can gain new skills, or detrimental effects. A character can even be lost entirely, at which point it's no longer available for play.", creator_id: users.sample.id},

{name: "Puerto Rico", picture: "https://cf.geekdo-images.com/ERdhn-fY5ScWqU1wdYDzEP9LzvM=/fit-in/246x300/pic158548.jpg", description: 'In Puerto Rico players assume the roles of colonial governors on the island of Puerto Rico. The aim of the game is to amass victory points by shipping goods to Europe or by constructing buildings.

Each player uses a separate small board with spaces for city buildings, plantations, and resources. Shared between the players are three ships, a trading house, and a supply of resources and doubloons.

The resource cycle of the game is that players grow crops which they exchange for points or doubloons. Doubloons can then be used to buy buildings, which allow players to produce more crops or give them other abilities. Buildings and plantations do not work unless they are manned by colonists.

During each round, players take turns selecting a role card from those on the table (such as "Trader" or "Builder"). When a role is chosen, every player gets to take the action appropriate to that role. The player that selected the role also receives a small privilege for doing so - for example, choosing the "Builder" role allows all players to construct a building, but the player who chose the role may do so at a discount on that turn. Unused roles gain a doubloon bonus at the end of each turn, so the next player who chooses that role gets to keep any doubloon bonus associated with it. This encourages players to make use of all the roles throughout a typical course of a game.

Puerto Rico uses a variable phase order mechanic, where a "governor" token is passed clockwise to the next player at the conclusion of a turn. The player with the token begins the round by choosing a role and taking the first action.

Players earn victory points for owning buildings, for shipping goods, and for manned "large buildings." Each players accumulated shipping chips are kept face down and come in denominations of one or five. This prevents other players from being able to determine the exact score of another player. Goods and doubloons are placed in clear view of other players and the totals of each can always be requested by a player. As the game enters its later stages, the unknown quantity of shipping tokens and its denominations require players to consider their options before choosing a role that can end the game.', creator_id: users.sample.id},

{name: "The castles of burgundy", picture: "https://cf.geekdo-images.com/k6uObSP3e1Er1sSv-hO5_J4yRLE=/fit-in/246x300/pic1176894.jpg", description: 'The game is set in the Burgundy region of High Medieval France. Each player takes on the role of an aristocrat, originally controlling a small princedom. While playing they aim to build settlements and powerful castles, practice trade along the river, exploit silver mines, and use the knowledge of travelers.

The game is about players taking settlement tiles from the game board and placing them into their princedom which is represented by the player board. Every tile has a function that starts when the tile is placed in the princedom. The princedom itself consists of several regions, each of which demands its own type of settlement tile.

The game is played in five phases, each consisting of five rounds. Each phase begins with the game board stocked with settlement tiles and goods tiles. At the beginning of each round all players roll their two dice, and the player who is currently first in turn order rolls a goods placement die. A goods tile is made available on the game board according to the roll of the goods die. During each round players take their turns in the current turn order. During his turn, a player may perform any two of the four possible types of actions: 1) take a settlement tile from the numbered depot on the game board corresponding to one of his dice and place it in the staging area on his player board, 2) take a settlement tile from the staging area of his player board to a space on his player board with a number matching one of his dice in the corresponding region for the type of tile and adjacent to a previously placed settlement tile, 3) deliver goods with a number matching one of his dice, or 4) take worker tokens which allow the player to adjust the roll of his dice. In addition to these actions a player may buy a settlement tile from the central depot on the game board and place it in the staging area on his player board. If an action triggers the award of victory points, those points are immediately recorded. Each settlement tile offers a benefit, additional actions, additional money, advancement on the turn order track, more goods tiles, die roll adjustment or victory points. Bonus victory points are awarded for filling a region with settlement tiles.

The game ends when the last player finishes his turn of the fifth round of the fifth phase. Victory points are awarded for unused money and workers, and undelivered goods. Bonus victory points from certain settlement tiles are awarded at the end of the game.', creator_id: users.sample.id},

{name: "Through the Ages: A Story of Civilization ", picture: "https://cf.geekdo-images.com/UfbmYy-gOvSXj3mXe2lspGvbHds=/fit-in/246x300/pic236169.jpg", description: 'Through the Ages is a civilization building game. Each player attempts to build the best civilization through careful resource management, discovering new technologies, electing the right leaders, building wonders and maintaining a strong military. Weakness in any area can be exploited by your opponents. The game takes place throughout the ages beginning in the age of antiquity and ending in the modern age.

One of the primary mechanisms in TTA is card drafting. Technologies, wonders, and leaders come into play and become easier to draft the longer they are in play. In order to use a technology you will need enough science to discover it, enough food to create a population to man it and enough resources (ore) to build the building to use it. While balancing the resources needed to advance your technology you also need to build a military. Military is built in the same way as civilian buildings. Players that have a weak military will be preyed upon by other players. There is no map in the game so you cannot lose territory, but players with higher military will steal resources, science, kill leaders, take population or culture. It is very difficult to win with a large military, but it is very easy to lose because of a weak one.

Victory is achieved by the player whose nation has the most culture at the end of the modern age.', creator_id: users.sample.id},

{name: "Blood rage", picture: "https://cf.geekdo-images.com/IBtRtMGWMXEXCVHroWqbbPT8I1g=/fit-in/246x300/pic2439223.jpg", description: '"Life is Battle; Battle is Glory; Glory is ALL"

In Blood Rage, each player controls their own Viking clan’s warriors, leader, and ship. Ragnarök has come, and it’s the end of the world! It’s the Vikings’ last chance to go down in a blaze of glory and secure their place in Valhalla at Odin’s side! For a Viking there are many pathways to glory. You can invade and pillage the land for its rewards, crush your opponents in epic battles, fulfill quests, increase your clans stats, or even die gloriously either in battle or from Ragnarök, the ultimate inescapable doom.

Most player strategies are guided by the cards drafted at the beginning of each of the three game rounds (or Ages). These “Gods’ Gifts” grant you numerous boons for your clan including: increased Viking strength and devious battle strategies, upgrades to your clan, or even the aid of legendary creatures from Norse mythology. They may also include various quests, from dominating specific provinces, to having lots of your Vikings sent to Valhalla. Most of these cards are aligned with one of the Norse gods, hinting at the kind of strategy they support. For example, Thor gives more glory for victory in battle, Heimdall grants you foresight and surprises, Tyr strengthens you in battle, while the trickster Loki actually rewards you for losing battles, or punishes the winner.

Players must choose their strategies carefully during the draft phase, but also be ready to adapt and react to their opponents’ strategies as the action phase unfolds. Battles are decided not only by the strength of the figures involved, but also by cards played in secret. By observing your opponent’s actions and allegiances to specific gods, you may predict what card they are likely to play, and plan accordingly. Winning battles is not always the best course of action, as the right card can get you even more rewards by being crushed. The only losing strategy in Blood Rage is to shy away from battle and a glorious death!', creator_id: users.sample.id},

{name: "Power grid", picture: "https://cf.geekdo-images.com/NqkNl_ZKW8XHQRZpNB9kmnqGr7U=/fit-in/246x300/pic173153.jpg", description: 'Power Grid is the updated release of the Friedemann Friese crayon game Funkenschlag. It removes the crayon aspect from network building in the original edition, while retaining the fluctuating commodities market like Crude: The Oil Game and an auction round intensity reminiscent of The Princes of Florence.

The objective of Power Grid is to supply the most cities with power when someones network gains a predetermined size. In this new edition, players mark pre-existing routes between cities for connection, and then bid against each other to purchase the power plants that they use to power their cities.

However, as plants are purchased, newer, more efficient plants become available, so by merely purchasing, youre potentially allowing others access to superior equipment.

Additionally, players must acquire the raw materials (coal, oil, garbage, and uranium) needed to power said plants (except for the renewable windfarm/ solar plants, which require no fuel), making it a constant struggle to upgrade your plants for maximum efficiency while still retaining enough wealth to quickly expand your network to get the cheapest routes.', creator_id: users.sample.id},

{name: "Eclipse", picture: "https://cf.geekdo-images.com/Ng0wVwl4xSa-MeOpuMaq1f7EwDs=/fit-in/246x300/pic1974056.jpg", description: 'PThe galaxy has been a peaceful place for many years. After the ruthless Terran–Hegemony War (30.027–33.364), much effort has been employed by all major spacefaring species to prevent the terrifying events from repeating themselves. The Galactic Council was formed to enforce precious peace, and it has taken many courageous efforts to prevent the escalation of malicious acts. Nevertheless, tension and discord are growing among the seven major species and in the Council itself. Old alliances are shattering, and hasty diplomatic treaties are made in secrecy. A confrontation of the superpowers seems inevitable – only the outcome of the galactic conflict remains to be seen. Which faction will emerge victorious and lead the galaxy under its rule?

A game of Eclipse places you in control of a vast interstellar civilization, competing for success with its rivals. You will explore new star systems, research technologies, and build spaceships with which to wage war. There are many potential paths to victory, so you need to plan your strategy according to the strengths and weaknesses of your species, while paying attention to the other civilizations endeavors.

The shadows of the great civilizations are about to eclipse the galaxy. Lead your people to victory!', creator_id: users.sample.id},

{name: "Codenames", picture: "https://cf.geekdo-images.com/j3KnNONTvPaOqyY_pwhS9C9s5bk=/fit-in/246x300/pic2582929.jpg", description: 'Two rival spymasters know the secret identities of 25 agents. Their teammates know the agents only by their CODENAMES.

In Codenames, two teams compete to see who can make contact with all of their agents first. Spymasters give one-word clues that can point to multiple words on the board. Their teammates try to guess words of the right color while avoiding those that belong to the opposing team. And everyone wants to avoid the assassin.

Codenames: Win or lose, its fun to figure out the clues.', creator_id: users.sample.id},

{name: "Brass", picture: "https://cf.geekdo-images.com/rbqGyQA2__6vbun1mKnPRJtwsy8=/fit-in/246x300/pic261878.jpg", description: 'In Brass the players represent industrialists in northern England during the heyday of the industrial revolution. Each player needs to build an economic engine that surpasses the other by the time railways are established and the foreign markets have been saturated with English cotton.

The goal of the game is to have the most points at the end of the game. These are obtained in three ways:
1) Building industries and having them successfully utilized
2) Building canal or rail connections to cities that have many successfully utilized industries
3) money at the end of the game (very inefficient).

Game play is divided into two phases - the Canal Phase and the Rail Phase. At the beginning of each phase players are dealt a hand of cards that represent a mix of the cities and the available industries.

On his turn, a player has two actions (except first turn of the game where there is only one action) and must spend a card for each one. Available actions include:
1) building an industry
2) building a connection [either canals or rails based on phase of the game]
3) developing their own industries which removes lower victory point industries from a players board in favor of higher victory point ones
4) selling cotton
5) taking a loan (absolutely necessary a few times a game).

At the end of a players turn they replace the two cards they played with two more from the deck. Turn order is determined by how much money a player spent on the previous turn - from lowest spent first to highest spent. This turn order mechanic opens some strategic options for players going later in the turn order allowing possibility of back-to-back turns.

After all the cards have been played the first time (deck size adjusted for number of players) the Canal Phase ends and a scoring round commences. After scoring, all canals and all of the lowest level industries are removed for the game, new cards are dealt and the Rail Phase begins. Rail Phase is identical to Canal Phase except players may now occupy more than one location in a city and a double connection build (though expensive) is possible. At the end of the Rail Phase there is another scoring round and a winner is crowned.

The use of the cards limit where you can build your industries but any card can be used for the develop, sell cotton or building connections actions. This leads to a strategic timing/storing of cards. Resources are common so that if one player builds a rail line (which requires coal) they have to use the coal from the nearest source which may be an opponents coal mine which gets that coal mine closer to scoring (i.e. being utilized).', creator_id: users.sample.id},

{name: "Keyflower", picture: "https://cf.geekdo-images.com/Ptah4wkpj4P_tZ2fc89tfWwIWSk=/fit-in/246x300/pic2278942.jpg", description: 'Keyflower is a game for two to six players played over four rounds. Each round represents a season: spring, summer, autumn, and finally winter. Each player starts the game with a "home" tile and an initial team of eight workers, each of which is colored red, yellow, or blue. Workers of matching colors are used by the players to bid for tiles to add to their villages. Matching workers may alternatively be used to generate resources, skills and additional workers, not only from the players own tiles, but also from the tiles in the other players villages and from the new tiles being auctioned.

In spring, summer and autumn, more workers will arrive on board the Keyflower and her sister boats, with some of these workers possessing skills in the working of the key resources of iron, stone and wood. In each of these seasons, village tiles are set out at random for auction. In the winter no new workers arrive and the players select the village tiles for auction from those they received at the beginning of the game. Each winter village tile offers VPs for certain combinations of resources, skills and workers. The player whose village and workers generate the most VPs wins the game.

Keyflower presents players with many different challenges and each game will be different due to the mix of village tiles that appear in that particular game. Throughout the game, players will need to be alert to the opportunities to best utilize their various resources, transport and upgrade capability, skills and workers.

Keyflower, a joint design between Richard Breese and Sebastian Bleasdale, is the seventh game in the "Key" series from R&D Games set in the medieval "Key" land.', creator_id: users.sample.id},

{name: "Food Chain Magnate ", picture: "https://cf.geekdo-images.com/27YCZiTuXGkPOBUT9Oc2C8PwhBo=/fit-in/246x300/pic2649434.png", description: '"Lemonade? They want lemonade? What is the world coming to? I want commercials for burgers on all channels, every 15 minutes. We are the Home of the Original Burger, not a hippie health haven. And place a billboard next to that new house on the corner. I want them craving beer every second they sit in their posh new garden." The new management trainee trembles in front of the CEO and tries to politely point out that... "How do you mean, we dont have enough staff? The HR director reports to you. Hire more people! Train them! But whatever you do, dont pay them any real wages. I did not go into business to become poor. And fire that discount manager, she is only costing me money. From now on, well sell gourmet burgers. Same crap, double the price. Get my marketing director in here!"

Food Chain Magnate is a heavy strategy game about building a fast food chain. The focus is on building your company using a card-driven (human) resource management system. Players compete on a variable city map through purchasing, marketing and sales, and on a job market for key staff members. The game can be played by 2-5 serious gamers in 2-4 hours.', creator_id: users.sample.id},

{name: "Caylus", picture: "https://cf.geekdo-images.com/xAtnSiJMCFYKpOy9mujcchgZ4jo=/fit-in/246x300/pic1638795.jpg", description: 'Once upon a time ...
1289. To strengthen the borders of the Kingdom of France, King Philip the Fair decided to have a new castle built. For the time being, Caylus is but a humble village, but soon, workers and craftsmen will be flocking by the cartload, attracted by the great prospects. Around the building site, a city is slowly rising up.

The players embody master builders. By building the Kings castle and developing the city around it, they earn prestige points and gain the Kings favor. When the castle is finished, the player who has earned the most prestige wins the game. The expansion Caylus Expansion: The Jeweller was included in the 2nd Edition.

Each turn, players pay to place their workers in various buildings in the village. These buildings allow players to gather resources or money, or to build or upgrade buildings with those resources. Players can also use their resources to help build the castle itself, earning points and favors from the king, which provide larger bonuses. Building a building provides some immediate points, and potentially income throughout the game, since players receive bonuses when others use their buildings. The buildings chosen by the players have a heavy impact on the course of the game, since they determine the actions that will be available to all the players.

As new buildings are built, they stretch along a road stretching away from the castle, and not all buildings can be used every turn. Players have some control over which buildings are active by paying to influence the movement of the Provost marker. The final position of the marker is the newest building that can be used that turn. The Provost marker also helps determine the movement of the Bailiff marker, which determines the end of the game. Generally, if players are building many buildings and the Provost is generous in allowing them to be used, the game ends more quickly.', creator_id: users.sample.id},

{name: "The voyages of Marco Polo", picture: "https://cf.geekdo-images.com/__SI9d5-maTfWGscsqpN5JsI9CQ=/fit-in/246x300/pic2461346.png", description: 'In 1271, 17-year-old Marco Polo started on a journey to China with his father and older brother. After a long and grueling journey that led through Jerusalem and Mesopotamia and over the "Silk Road", they reached the court of Kublai Khan in 1275.

In The Voyages of Marco Polo, players recreate this journey, with each player having a different character and special power in the game. The game is played over five rounds. Each round, the players roll their five personal dice and can perform one action each turn with them. The five main actions are shown on the bottom part of the board:

Get resources with 1-3 dice, depending on the value of the resource (camels, pepper, silk, gold). The first player for each resource gets them for free; the later ones have to pay according to the value shown on the dice.
Take one resource of your choice and two camels. Each player sets the minimum value for the future dice.
Earn money, with any one die netting you five money.
Purchase orders: The value of one die unlocks the orders up to that number (shown on the spaces) and allows you to buy one or two of those orders. Orders are refreshed and placed at the beginning of each round. To fulfill an order, players have to spend resources for victory points, other resources, camels, and more.
Travel: Two dice are placed to unlock the distance that can be traveled on the upper part of the board, that is, the map. Here, the traveler piece of each player starts at Venice and can decide between several routes eastward, all the way to Beijing. When a traveler stops at a city, they place a marker there, giving them access to a different additional action for the rest of the game.
After five rounds, the game ends with players receiving victory points for arriving in Beijing, fulfilling the most orders, and having reached the cities on secret city cards that each player gets at the start of the game; these points are added to the VPs gained during the game.

Auf den Spuren von Marco Polo should not be confused with Marco Polo Expedition, which had the same German title.', creator_id: users.sample.id},

{name: "Concordia", picture: "https://cf.geekdo-images.com/1GZVaENKzDsFqIGJ2G9PAMcvPAM=/fit-in/246x300/pic1980675.jpg", description: 'Two thousand years ago, the Roman Empire ruled the lands around the Mediterranean Sea. With peace at the borders, harmony inside the provinces, uniform law, and a common currency, the economy thrived and gave rise to mighty Roman dynasties as they expanded throughout the numerous cities. Guide one of these dynasties and send colonists to the remote realms of the Empire; develop your trade network; and appease the ancient gods for their favor — all to gain the chance to emerge victorious!

Concordia is a peaceful strategy game of economic development in Roman times for 2-5 players aged 13 and up. Instead of looking to the luck of dice or cards, players must rely on their strategic abilities. Be sure to watch your rivals to determine which goals they are pursuing and where you can outpace them! In the game, colonists are sent out from Rome to settle down in cities that produce bricks, food, tools, wine, and cloth. Each player starts with an identical set of playing cards and acquires more cards during the game. These cards serve two purposes:

They allow a player to choose actions during the game.
They are worth victory points (VPs) at the end of the game.
Concordia is a strategy game that requires advance planning and consideration of your opponents moves. Every game is different, not only because of the sequence of new cards on sale but also due to the modular layout of cities. (One side of the game board shows the entire Roman Empire with 30 cities for 3-5 players, while the other shows Roman Italy with 25 cities for 2-4 players.) When all cards have been sold, the game ends. The player with the most VPs from the gods (Jupiter, Saturnus, Mercurius, Minerva, Vesta, etc.) wins the game.', creator_id: users.sample.id},

{name: "Patchwork", picture: "https://cf.geekdo-images.com/WPQjScMXWzXotrdyRte5Nw78xdQ=/fit-in/246x300/pic2270442.jpg", description: 'In Patchwork, two players compete to build the most aesthetic (and high-scoring) patchwork quilt on a personal 9x9 game board. To start play, lay out all of the patches at random in a circle and place a marker directly clockwise of the 2-1 patch. Each player takes five buttons — the currency/points in the game — and someone is chosen as the start player.

On a turn, a player either purchases one of the three patches standing clockwise of the spool or passes. To purchase a patch, you pay the cost in buttons shown on the patch, move the spool to that patchs location in the circle, add the patch to your game board, then advance your time token on the time track a number of spaces equal to the time shown on the patch. Youre free to place the patch anywhere on your board that doesnt overlap other patches, but you probably want to fit things together as tightly as possible. If your time token is behind or on top of the other players time token, then you take another turn; otherwise the opponent now goes. Instead of purchasing a patch, you can choose to pass; to do this, you move your time token to the space immediately in front of the opponents time token, then take one button from the bank for each space you moved.

In addition to a button cost and time cost, each patch also features 0-3 buttons, and when you move your time token past a button on the time track, you earn "button income": sum the number of buttons depicted on your personal game board, then take this many buttons from the bank.

Whats more, the time track depicts five 1x1 patches on it, and during set-up you place five actual 1x1 patches on these spaces. Whoever first passes a patch on the time track claims this patch and immediately places it on his game board.

Additionally, the first player to completely fill in a 7x7 square on his game board earns a bonus tile worth 7 extra points at the end of the game. (Of course, this doesnt happen in every game.)

When a player takes an action that moves his time token to the central square of the time track, he takes one final button income from the bank. Once both players are in the center, the game ends and scoring takes place. Each player scores one point per button in his possession, then loses two points for each empty square on his game board. Scores can be negative. The player with the most points wins.', creator_id: users.sample.id},

{name: "Dominant Species", picture: "https://cf.geekdo-images.com/4hl4RAfGaZTrQ3EkB9isK2RTHPo=/fit-in/246x300/pic784193.jpg", description: '90,000 B.C. — A great ice age is fast approaching. Another titanic struggle for global supremacy has unwittingly commenced between the varying animal species.
Dominant Species is a game that abstractly recreates a tiny portion of ancient history: the ponderous encroachment of an ice age and what that entails for the living creatures trying to adapt to the slowly-changing earth.
Each player will assume the role of one of six major animal classes—mammal, reptile, bird, amphibian, arachnid, or insect. Each begins the game more or less in a state of natural balance in relation to one another. But that won’t last: It is indeed "survival of the fittest".
Through wily action pawn placement, players will strive to become dominant on as many different terrain tiles as possible in order to claim powerful card effects. Players will also want to propagate their individual species in order to earn victory points for their particular animal. Players will be aided in these endeavors via speciation, migration, and adaptation actions, among others.
All of this eventually leads to the end game—the final ascent of the ice age—where the player having accumulated the most victory points will have his animal crowned the Dominant Species.
But somebody better become dominant quickly, because it’s getting mighty cold...

Game Play
The large hexagonal tiles are used throughout the game to create an ever-expanding interpretation of earth as it might have appeared a thousand centuries ago. The smaller tundra tiles will be placed atop the larger tiles—converting them into tundra in the process—as the ice age encroaches.
The cylindrical action pawns (or "AP"s) drive the game. Each AP will allow a player to perform the various actions that can be taken, such as speciation, environmental change, migration, or glaciation. After being placed on the action display during the Planning Phase, an AP will trigger that particular action for the owning player during the Execution Phase.
Generally, players will be trying to enhance their own animal’s survivability while simultaneously trying to hinder that of their opponents’—hopefully collecting valuable victory points (or "VP"s) along the way. The various cards will aid in these efforts, giving players useful one-time abilities or an opportunity for recurring VP gains.
Throughout the game, species cubes will be added to, moved about in, and removed from the tiles in play (the "earth"). Element disks will be added to and removed from both animals and earth.
When the game ends, players will conduct a final scoring of each tile—after which the player controlling the animal with the highest VP total wins the game.', creator_id: users.sample.id},

{name: "Roll for the galaxy", picture: "https://cf.geekdo-images.com/Vi3pvbq9sLk_OHzxio8lzjB_77k=/fit-in/246x300/pic1473629.jpg", description: 'Roll for the Galaxy is a dice game of building space empires for 2–5 players. Your dice represent your populace, whom you direct to develop new technologies, settle worlds, and ship goods. The player who best manages his workers and builds the most prosperous empire wins!

This dice version of Race for the Galaxy takes players on a new journey through the Galaxy, but with the feel of the original game.', creator_id: users.sample.id},

{name: "Five Tribes", picture: "https://cf.geekdo-images.com/o3D15fBxzTt3k2IFZ2u2Xr7Wlyk=/fit-in/246x300/pic2055255.jpg", description: 'Crossing into the Land of 1001 Nights, your caravan arrives at the fabled Sultanate of Naqala. The old sultan just died and control of Naqala is up for grabs! The oracles foretold of strangers who would maneuver the Five Tribes to gain influence over the legendary city-state. Will you fulfill the prophecy? Invoke the old Djinns and move the Tribes into position at the right time, and the Sultanate may become yours!

Designed by Bruno Cathala, Five Tribes builds on a long tradition of German-style games that feature wooden meeples. Here, in a unique twist on the now-standard "worker placement" genre, the game begins with the meeples already in place – and players must cleverly maneuver them over the villages, markets, oases, and sacred places tiles that make up Naqala. How, when, and where you dis-place these Five Tribes of Assassins, Elders, Builders, Merchants, and Viziers determine your victory or failure.

As befitting a Days of Wonder game, the rules are straightforward and easy to learn. But devising a winning strategy will take a more calculated approach than our standard fare. You need to carefully consider what moves can score you well and put your opponents at a disadvantage. You need to weigh many different pathways to victory, including the summoning of powerful Djinns that may help your cause as you attempt to control this legendary Sultanate.', creator_id: users.sample.id},

{name: "El Grande", picture: "https://cf.geekdo-images.com/ND3OirqraTmaDezxdXeqq5EpUKg=/fit-in/246x300/pic180538.jpg", description: 'In this award-winning game, players take on the roles of Grandes in medieval Spain. The kings power is flagging, and these powerful lords are vying for control of the various regions. To that end, you draft caballeros (knights in the form of colored cubes) into your court and subsequently move them onto the board to help seize control of regions. After every third round, the regions are scored, and after the ninth round, the player with the most points is the winner.

In each of the nine rounds, you select one of your 13 power cards to determine turn order as well as the number of caballeros you get to move from the provinces (general supply) into your court (personal supply).

A turn then consists of selecting one of five action cards which allow variations to the rules and additional scoring opportunities in addition to determining how many caballeros to move from your court to one or more of the regions on the board (or into the castillo - a secretive tower). Normally, you may only place your caballeros into regions adjacent to the one containing the king pawn. The one hard and fast rule in El Grande is that nothing may move into or out of the kings region. One of the five action cards that is always available each round allows you to move the king to a new region. The other four action cards varying from round to round.

The goal is to have a caballero majority in as many regions (and the castillo) as possible during a scoring round. Following the scoring of the castillo, you place any cubes you had stashed there into the region you had secretly indicated on your region dial. Each region is then scored individually according to a table printed in that region. Two-point bonuses are awarded for having sole majority in the region containing your Grande (large cube) and in the region containing the king.', creator_id: users.sample.id},

{name: "Race for the galaxy", picture: "https://cf.geekdo-images.com/OpggDiQSlTXO2PusbIf2jpILRSk=/fit-in/246x300/pic236327.jpg", description: 'In the card game Race for the Galaxy, players build galactic civilizations by playing game cards in front of them that represent worlds or technical and social developments. Some worlds allow players to produce goods, which can be consumed later to gain either card draws or victory points when the appropriate technologies are available to them. These are mainly provided by the developments and worlds that are not able to produce, but the fancier production worlds also give these bonuses.

At the beginning of each round, players each select, secretly and simultaneously, one of the seven roles which correspond to the phases in which the round progresses. By selecting a role, players activate that phase for this round, giving each player the opportunity to perform that phases action. For example, if one player chooses the settle role, each player has the opportunity to settle one of the planets from their hand. The player who has chosen the role, however, gets a bonus that applies only to them. But bonuses may also be acquired through developments, so you must be aware when another player also takes advantage of your choice of role.', creator_id: users.sample.id},

{name: "Lords of Waterdeep", picture: "https://cf.geekdo-images.com/VYYUbyIZHFJSUCS9Os2ndcV041k=/fit-in/246x300/pic1116080.jpg", description: 'Waterdeep, the City of Splendors – the most resplendent jewel in the Forgotten Realms, and a den of political intrigue and shady back-alley dealings. In this game, the players are powerful lords vying for control of this great city. Its treasures and resources are ripe for the taking, and that which cannot be gained through trickery and negotiation must be taken by force!

In Lords of Waterdeep, a strategy board game for 2-5 players, you take on the role of one of the masked Lords of Waterdeep, secret rulers of the city. Through your agents, you recruit adventurers to go on quests on your behalf, earning rewards and increasing your influence over the city. Expand the city by purchasing new buildings that open up new actions on the board, and hinder – or help – the other lords by playing Intrigue cards to enact your carefully laid plans.

During the course of play, you may gain points or resources through completing quests, constructing buildings, playing intrigue cards or having other players utilize the buildings you have constructed. At the end of 8 rounds of play, the player who has accrued the most points wins the game.', creator_id: users.sample.id},

{name: "Battlestar Galactica", picture: "https://cf.geekdo-images.com/CzmKWyU1qu6M7bVGiW2T9Vo6c_w=/fit-in/246x300/pic354500.jpg", description: 'Battlestar Galactica: The Board Game is an exciting game of mistrust, intrigue, and the struggle for survival. Based on the epic and widely-acclaimed Sci Fi Channel series, Battlestar Galactica: The Board Game puts players in the role of one of ten of their favorite characters from the show. Each playable character has their own abilities and weaknesses, and must all work together in order for humanity to have any hope of survival. However, one or more players in every game secretly side with the Cylons. Players must attempt to expose the traitor while fuel shortages, food contaminations, and political unrest threatens to tear the fleet apart.

After the Cylon attack on the Colonies, the battered remnants of the human race are on the run, constantly searching for the next signpost on the road to Earth. They face the threat of Cylon attack from without, and treachery and crisis from within. Humanity must work together if they are to have any hope of survival…but how can they, when any of them may, in fact, be a Cylon agent?

Battlestar Galactica: The Board Game is a semi-cooperative game for 3-6 players ages 10 and up that can be played in 2-3 hours. Players choose from pilots, political leaders, military leaders, or engineers to crew Galactica. They are also dealt a loyalty card at the start of the game to determine if they are a human or Cylon along with an assortment of skill cards based on their characters abilities. Players then can move and take actions either on Galactica, on Colonial 1, or in a Viper. They need to collect skill cards, fend off Cylon ships, and keep Galactica and the fleet jumping. Each turn also brings a Crisis Card, various tasks that players must overcome. Players need to play matching skill cards to fend off the problems; skill cards that dont match hinder the players success. Fate could be working against the crew, or there could be a traitorous Cylon! As players get closer and closer towards reaching their Earth, another round of loyalty cards are passed out and more Cylons may turn up. If players can keep their up their food stores, fuel levels, ship morale, and population, and they can keep Galactica in one piece long enough to make it to Earth, the Humans win the game. But if the Cylon players reveal themselves at the right moment and bring down Galactica, the Humans have lost.', creator_id: users.sample.id},

{name: "Trajan", picture: "https://cf.geekdo-images.com/KY7aziqMmONCP71XuEypaSmt4O4=/fit-in/246x300/pic1054375.jpg", description: 'Set in ancient Rome, Trajan is a development game in which players try to increase their influence and power in various areas of Roman life such as political influence, trading, military dominion and other important parts of Roman culture.

The central mechanism of the game uses a system similar to that in Mancala or pit-and-pebbles games. In Trajan, a player has six possible actions: building, trading, taking tiles from the forum, using the military, influencing the Senate, and placing Trajan tiles on his tableau.

At the start of the game, each player has two differently colored pieces in each of the six sections (bowls) of his tableau. On a turn, the player picks up all the pieces in one bowl and distributes them one-by-one in bowls in a clockwise order. Wherever the final piece is placed, the player takes the action associated with that bowl; in addition, if the colored pieces in that bowl match the colors shown on a Trajan tile next to the bowl (with tiles being placed at the start of the game and through later actions), then the player takes the additional action shown on that tile.

What are you trying to do with these actions? Acquire victory points (VPs) in whatever ways are available to you – and since this is a Feld design, you try to avoid being punished, too. At the Forum you try to anticipate the demands of the public so that you can supply them what they want and not suffer a penalty. In the Senate you acquire influence which translates into votes on VP-related laws, ideally snagging a law that fits your long-term plans. With the military, you take control of regions in Europe, earning more points for those regions far from Rome.

All game components are language neutral, and the playing time is 30 minutes per player.', creator_id: users.sample.id},

{name: "Stone age", picture: "https://cf.geekdo-images.com/Rre-D9b80DvMeIgpcWDL8zMfyPk=/fit-in/246x300/pic1632539.jpg", description: 'The "Stone Age" times were hard indeed. In their roles as hunters, collectors, farmers, and tool makers, our ancestors worked with their legs and backs straining against wooden plows in the stony earth. Of course, progress did not stop with the wooden plow. People always searched for better tools and more productive plants to make their work more effective.

In Stone Age, the players live in this time, just as our ancestors did. They collect wood, break stone and wash their gold from the river. They trade freely, expand their village and so achieve new levels of civilization. With a balance of luck and planning, the players compete for food in this pre-historic time.

Players use up to ten tribe members each in three phases. In the first phase, players place their men in regions of the board that they think will benefit them, including the hunt, the trading center, or the quarry. In the second phase, the starting player activates each of his staffed areas in whatever sequence he chooses, followed in turn by the other players. In the third phase, players must have enough food available to feed their populations, or they face losing resources or points.', creator_id: users.sample.id}
  ])

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
