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

ActiveRecord::Schema.define(version: 20171020102753) do

  create_table "images", force: :cascade do |t|
    t.integer  "shop_id",    limit: 4
    t.text     "image",      limit: 65535
    t.string   "memo",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "shop_id",    limit: 4
    t.integer  "user_id",    limit: 4
    t.text     "review",     limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shops", force: :cascade do |t|
    t.string   "shop_name",  limit: 255
    t.string   "genre",      limit: 255
    t.string   "sales_copy", limit: 255
    t.text     "text",       limit: 65535
    t.text     "main_image", limit: 65535
    t.text     "sub_image",  limit: 65535
    t.string   "adress",     limit: 255
    t.string   "tel",        limit: 255
    t.string   "opne_time",  limit: 255
    t.string   "link",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
