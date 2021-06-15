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

ActiveRecord::Schema.define(version: 20210615221014) do

  create_table "gyms", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.integer  "capacity"
    t.string   "description"
    t.integer  "treadmill"
    t.integer  "barbell"
    t.integer  "leg_press"
    t.integer  "locker_room"
    t.integer  "shower_room"
    t.integer  "price_1m"
    t.integer  "price_3m"
    t.integer  "price_12m"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "pil_posts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pil_reviews", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pilates", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.integer  "capacity"
    t.string   "description"
    t.integer  "locker_room"
    t.integer  "shower_room"
    t.integer  "price_1m"
    t.integer  "price_3m"
    t.integer  "price_12m"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "posts", force: :cascade do |t|
    t.text     "number"
    t.text     "time"
    t.text     "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "title"
    t.integer  "point"
    t.text     "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "yoga_posts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "yoga_reviews", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "yogas", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.integer  "capacity"
    t.string   "description"
    t.integer  "locker_room"
    t.integer  "shower_room"
    t.integer  "price_1m"
    t.integer  "price_3m"
    t.integer  "price_12m"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
