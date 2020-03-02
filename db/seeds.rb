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


Store.create(name: "Lizard's Lair", location: "Southeast-northwest of town, just past the barn", description: "Significantly smaller than a dragon's lair")
GameTable.create(store_id: 2, table_name: "Mini Table 1", seats_available: 4)
GameTable.create(store_id: 2, table_name: "Mini Table 2", seats_available: 4)
GameTable.create(store_id: 2, table_name: "The Great Beyond", seats_available: 8)


Store.create(name: "Billy-Bob's Gaming Emporeum", location: "Not there, over here", description: "Board games in the front, fishin' supplies out back")
GameTable.create(store_id: 3, table_name: "Fish Deboning Table", seats_available: 4)
GameTable.create(store_id: 3, table_name: "Master Baiting Station", seats_available: 4)
GameTable.create(store_id: 3, table_name: "The Gross Table", seats_available: 3)
