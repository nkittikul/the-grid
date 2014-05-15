# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140511211714) do

  create_table "grids", force: true do |t|
    t.string   "name"
    t.integer  "height"
    t.integer  "width"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "terrains", force: true do |t|
    t.string   "name"
    t.integer  "defense"
    t.integer  "movement_cost"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "grid_id"
  end

  create_table "tiles", force: true do |t|
    t.integer  "grid_id"
    t.integer  "unit_id"
    t.integer  "terrain_id"
    t.integer  "x"
    t.integer  "y"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tiles", ["grid_id"], name: "index_tiles_on_grid_id"
  add_index "tiles", ["unit_id"], name: "index_tiles_on_unit_id"

  create_table "units", force: true do |t|
    t.string   "name"
    t.string   "unit_class"
    t.integer  "level"
    t.integer  "max_hp"
    t.integer  "current_hp"
    t.integer  "exp"
    t.integer  "strength"
    t.integer  "magic"
    t.integer  "skill"
    t.integer  "speed"
    t.integer  "luck"
    t.integer  "defense"
    t.integer  "resistance"
    t.integer  "grid_id"
    t.string   "map_image"
    t.string   "portrait_image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
