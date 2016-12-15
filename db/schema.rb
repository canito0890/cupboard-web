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

ActiveRecord::Schema.define(version: 20161214231603) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "families", id: :bigserial, force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "family_users", force: :cascade do |t|
    t.integer  "family_id",  null: false
    t.string   "name",       null: false
    t.string   "last_names", null: false
    t.string   "mail",       null: false
    t.string   "password",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["family_id"], name: "index_family_users_on_family_id", using: :btree
  end

  create_table "list_products", force: :cascade do |t|
    t.integer  "list_id",                    null: false
    t.integer  "product_id",                 null: false
    t.boolean  "bought",     default: false, null: false
    t.string   "amount",                     null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["list_id"], name: "index_list_products_on_list_id", using: :btree
    t.index ["product_id"], name: "index_list_products_on_product_id", using: :btree
  end

  create_table "lists", force: :cascade do |t|
    t.integer  "family_id"
    t.integer  "family_user_id",                 null: false
    t.string   "name",                           null: false
    t.boolean  "complete",       default: false, null: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["family_id"], name: "index_lists_on_family_id", using: :btree
    t.index ["family_user_id"], name: "index_lists_on_family_user_id", using: :btree
  end

  create_table "markets", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer  "category_id", null: false
    t.string   "name",        null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["category_id"], name: "index_products_on_category_id", using: :btree
  end

  create_table "purchases", force: :cascade do |t|
    t.integer  "product_id",                 null: false
    t.float    "amount",     default: 0.0,   null: false
    t.decimal  "price",      default: "0.0", null: false
    t.string   "image_url"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["product_id"], name: "index_purchases_on_product_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "last_names", null: false
    t.string   "mail",       null: false
    t.string   "password",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "family_users", "families", on_update: :cascade, on_delete: :cascade
  add_foreign_key "list_products", "lists", on_update: :cascade, on_delete: :cascade
  add_foreign_key "list_products", "products", on_update: :cascade, on_delete: :cascade
  add_foreign_key "lists", "families", on_update: :cascade, on_delete: :cascade
  add_foreign_key "lists", "family_users", on_update: :cascade, on_delete: :cascade
  add_foreign_key "products", "categories", on_update: :cascade, on_delete: :cascade
  add_foreign_key "purchases", "products", on_update: :cascade, on_delete: :cascade
end
