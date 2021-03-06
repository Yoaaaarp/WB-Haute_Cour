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

ActiveRecord::Schema.define(version: 20160607084025) do

  create_table "bottles", force: :cascade do |t|
    t.float    "price",      limit: 24
    t.integer  "stock",      limit: 4
    t.float    "capacity",   limit: 24
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "wine_id",    limit: 4
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.string   "text",       limit: 255
    t.datetime "beginAt"
    t.string   "image",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "links", force: :cascade do |t|
    t.integer  "order_id",   limit: 4
    t.integer  "bottle_id",  limit: 4
    t.integer  "number",     limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "status_id",  limit: 4
    t.integer  "user_id",    limit: 4
  end

  create_table "statuses", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "password_digest", limit: 255
    t.integer  "admin",           limit: 4
    t.string   "street",          limit: 255
    t.string   "city",            limit: 255
    t.integer  "npa",             limit: 4
    t.string   "canton",          limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "wines", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "desc",        limit: 255
    t.string   "vineyard",    limit: 255
    t.string   "grape",       limit: 255
    t.string   "image",       limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "category_id", limit: 4
  end

end
