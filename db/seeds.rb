# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

dummy_grid = Grid.create(name: "dummy", height: 1, width: 1)

src_grass = File.join(Rails.root, "public/seed/grass.jpeg")
src_file_grass = File.new(src_grass)
dummy_grid.terrains.create(name: "Grass", defense: 0, movement_cost: 1, image: src_file_grass)

src_mountain = File.join(Rails.root, "public/seed/mountain.jpeg")
src_file_mountain = File.new(src_mountain)
dummy_grid.terrains.create(name: "Mountain", defense: 4, movement_cost: 4, image: src_file_mountain)

src_forest = File.join(Rails.root, "public/seed/forest.jpeg")
src_file_forest = File.new(src_forest)
dummy_grid.terrains.create(name: "Forest", defense: 2, movement_cost: 2, image: src_file_forest)

src_water = File.join(Rails.root, "public/seed/water.jpeg")
src_file_water = File.new(src_water)
dummy_grid.terrains.create(name: "Water", defense: 0, movement_cost: 999, image: src_file_water)





