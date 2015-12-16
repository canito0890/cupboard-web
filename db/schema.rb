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

ActiveRecord::Schema.define(version: 20151216190625) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "casein_admin_users", force: :cascade do |t|
    t.string   "login",                           null: false
    t.string   "name"
    t.string   "email"
    t.integer  "access_level",        default: 0, null: false
    t.string   "crypted_password",                null: false
    t.string   "password_salt",                   null: false
    t.string   "persistence_token"
    t.string   "single_access_token"
    t.string   "perishable_token"
    t.integer  "login_count",         default: 0, null: false
    t.integer  "failed_login_count",  default: 0, null: false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.string   "time_zone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "families", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "list_products", force: :cascade do |t|
    t.integer  "list_id",    null: false
    t.integer  "product_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "list_products", ["list_id"], name: "index_list_products_on_list_id", using: :btree
  add_index "list_products", ["product_id"], name: "index_list_products_on_product_id", using: :btree

  create_table "lists", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "family_id",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "lists", ["family_id"], name: "index_lists_on_family_id", using: :btree

  create_table "market_products", force: :cascade do |t|
    t.integer  "market_id",  null: false
    t.integer  "product_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "market_products", ["market_id"], name: "index_market_products_on_market_id", using: :btree
  add_index "market_products", ["product_id"], name: "index_market_products_on_product_id", using: :btree

  create_table "markets", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name",        null: false
    t.integer  "category_id", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "products", ["category_id"], name: "index_products_on_category_id", using: :btree

  create_table "purchases", force: :cascade do |t|
    t.decimal  "amount",     null: false
    t.decimal  "price",      null: false
    t.string   "extension",  null: false
    t.integer  "product_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "purchases", ["product_id"], name: "index_purchases_on_product_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "last_names", null: false
    t.string   "password",   null: false
    t.integer  "family_id",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "users", ["family_id"], name: "index_users_on_family_id", using: :btree

  add_foreign_key "list_products", "lists"
  add_foreign_key "list_products", "products"
  add_foreign_key "lists", "families"
  add_foreign_key "market_products", "markets"
  add_foreign_key "market_products", "products"
  add_foreign_key "products", "categories"
  add_foreign_key "purchases", "products"
  add_foreign_key "users", "families"
end
