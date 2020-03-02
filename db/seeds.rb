# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#Phil's store, tables, and games creation
Store.create(name: "Phil's Phabulous Phantasy Phactory", location: "5th street by that old tree", description: "It's...definitely a place")
GameTable.create(store_id: 1, table_name: "Phear The Reaper", seats_available: 6)
GameTable.create(store_id: 1, table_name: "Phorget Your worries", seats_available: 6)
GameTable.create(store_id: 1, table_name: "Phun Phor All", seats_available: 8)
GameTable.create(store_id: 1, table_name: "Phree Phor All", seats_available: 4)
GameTable.create(store_id: 1, table_name: "Phool's Gold", seats_available: 7)
Game.create(store_id: 1, name: "Phantasy Realm", description: "Players go on one of four quests, racing against each other to satisfy the victory conditions. Each turn, a hero can move rapidly about or search the areas of the board. While searching, the hero will receive an encounter, drawn and run by another player, or play through an encounter scenario (for named areas of the board). Results can help or hinder each hero by changing stats and equipment and magic. Players can also encounter other players. Combat is by competing dice rolls, modified by stats and equipment modifiers.", min_players: 2, max_players: 4, min_playtime: 60, max_playtime: 60, link_url: "https://boardgamegeek.com/boardgame/5877/phantasy-realm", photo_url: "https://cf.geekdo-images.com/imagepage/img/yCjGXzpt8KKuJQ9WvODXwhOEysU=/fit-in/900x600/filters:no_upscale()/pic22098.jpg")
#  Game.create(store_id: 1, name: "", description: "", min_players: , max_players: , min_playtime: , max_playtime: , link_url: "", photo_url: "")



Store.create(name: "Lizard's Lair", location: "Southeast-northwest of town, just past the barn", description: "Significantly smaller than a dragon's lair")
GameTable.create(store_id: 2, table_name: "Mini Table 1", seats_available: 4)
GameTable.create(store_id: 2, table_name: "Mini Table 2", seats_available: 4)
GameTable.create(store_id: 2, table_name: "The Great Beyond", seats_available: 8)
Game.create(store_id: 2, name: "The Battle of Lizard", description: "In The Battle of Lizard, a.k.a. 蜥蓋, players each control a group of lizards on an island competing for survival — long-term survival, that is, because when breeding time arrives, these male lizards (Uta stansburiana) will fight one another for land and the right to reproduction. To succeed, you need to block others to keep them from reproducing!", min_players: 2, max_players: 6, min_playtime: 20, max_playtime: 40, link_url: "https://boardgamegeek.com/boardgame/269731/battle-lizard", photo_url: "https://cf.geekdo-images.com/original/img/5UB3a05fBlgACtNfKN7WtrCAtt8=/0x0/pic4885364.png")
#  Game.create(store_id: 2, name: "", description: "", min_players: , max_players: , min_playtime: , max_playtime: , link_url: "", photo_url: "")


Store.create(name: "Billy-Bob's Gaming Emporeum", location: "Not there, over here", description: "Board games in the front, fishin' supplies out back")
GameTable.create(store_id: 3, table_name: "Fish Deboning Table", seats_available: 4)
GameTable.create(store_id: 3, table_name: "Master Baiting Station", seats_available: 4)
GameTable.create(store_id: 3, table_name: "The Gross Table", seats_available: 3)
Game.create(store_id: 3, name: "Gone Fishing!", description: "One player takes the role of the two anglers and tries to catch as many fish as possible. The other player takes the role of the fish and with bluff and skill tries to hinder the anglers from catching fish. The angler player decides where to fish, but must do so in the dark (that is, he cannot really see where the fish are), as the fish cards are placed face down. Because of this, he does not know whether he is catching a fish or garbage. Also, when he is lucky enough to catch a fish, he will not know until he lands it how valuable it is. With clever movement of his fish, the fish player tries to get garbage and small fish onto the anglers hooks.", min_players: 2, max_players: 2, min_playtime: 40, max_playtime: 60, link_url: "https://boardgamegeek.com/boardgame/16226/gone-fishing", photo_url: "https://cf.geekdo-images.com/imagepagezoom/img/agk_dDlW-2P9kGE8lU84kORfmtY=/fit-in/1200x900/filters:no_upscale()/pic74873.jpg")
#  Game.create(store_id: 3, name: "", description: "", min_players: , max_players: , min_playtime: , max_playtime: , link_url: "", photo_url: "")
