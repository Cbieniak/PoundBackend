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

ActiveRecord::Schema.define(version: 20140503032037) do

  create_table "breeds", force: true do |t|
    t.string   "name"
    t.integer  "species_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "colors", force: true do |t|
    t.string   "name"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contact_details", force: true do |t|
    t.integer  "type"
    t.string   "detail"
    t.integer  "pet_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pet_images", force: true do |t|
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "petId"
  end

  create_table "pet_locations", force: true do |t|
    t.string   "suburb"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pets", force: true do |t|
    t.string   "image_url"
    t.string   "thumb_url"
    t.integer  "species_id"
    t.integer  "breed_id"
    t.integer  "reward"
    t.text     "notes"
    t.string   "contact_name"
    t.string   "contact_detail"
    t.integer  "contact_type"
    t.boolean  "lost"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "species", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
