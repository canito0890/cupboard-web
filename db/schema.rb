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

ActiveRecord::Schema.define(version: 20170107070324) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", id: :bigserial, force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "families", id: :bigserial, force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "family_users", id: :bigserial, force: :cascade do |t|
    t.integer  "family_id",                                null: false
    t.string   "name",                                     null: false
    t.string   "last_names",                               null: false
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.string   "provider",               default: "email", null: false
    t.string   "uid",                    default: "",      null: false
    t.string   "encrypted_password",     default: "",      null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,       null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "email"
    t.json     "tokens"
    t.index ["email"], name: "index_family_users_on_email", using: :btree
    t.index ["family_id"], name: "index_family_users_on_family_id", using: :btree
    t.index ["reset_password_token"], name: "index_family_users_on_reset_password_token", unique: true, using: :btree
    t.index ["uid", "provider"], name: "index_family_users_on_uid_and_provider", unique: true, using: :btree
  end

  create_table "list_products", id: :bigserial, force: :cascade do |t|
    t.integer  "list_id",                    null: false
    t.integer  "product_id",                 null: false
    t.boolean  "bought",     default: false, null: false
    t.string   "amount",                     null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["list_id"], name: "index_list_products_on_list_id", using: :btree
    t.index ["product_id"], name: "index_list_products_on_product_id", using: :btree
  end

  create_table "lists", id: :bigserial, force: :cascade do |t|
    t.integer  "family_id"
    t.integer  "family_user_id",                 null: false
    t.string   "name",                           null: false
    t.boolean  "complete",       default: false, null: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["family_id"], name: "index_lists_on_family_id", using: :btree
    t.index ["family_user_id"], name: "index_lists_on_family_user_id", using: :btree
  end

  create_table "market_products", id: :bigserial, force: :cascade do |t|
    t.integer  "market_id",  null: false
    t.integer  "product_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["market_id"], name: "index_market_products_on_market_id", using: :btree
    t.index ["product_id"], name: "index_market_products_on_product_id", using: :btree
  end

  create_table "markets", id: :bigserial, force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", id: :bigserial, force: :cascade do |t|
    t.integer  "category_id", null: false
    t.string   "name",        null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["category_id"], name: "index_products_on_category_id", using: :btree
  end

  create_table "purchases", id: :bigserial, force: :cascade do |t|
    t.integer  "product_id",                 null: false
    t.float    "amount",     default: 0.0,   null: false
    t.decimal  "price",      default: "0.0", null: false
    t.string   "image_url"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["product_id"], name: "index_purchases_on_product_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "provider",               default: "email", null: false
    t.string   "uid",                    default: "",      null: false
    t.string   "encrypted_password",     default: "",      null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,       null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.string   "last_names"
    t.string   "email"
    t.json     "tokens"
    t.index ["email"], name: "index_users_on_email", using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true, using: :btree
  end

  add_foreign_key "family_users", "families", on_update: :cascade, on_delete: :cascade
  add_foreign_key "list_products", "lists", on_update: :cascade, on_delete: :cascade
  add_foreign_key "list_products", "products", on_update: :cascade, on_delete: :cascade
  add_foreign_key "lists", "families", on_update: :cascade, on_delete: :cascade
  add_foreign_key "lists", "family_users", on_update: :cascade, on_delete: :cascade
  add_foreign_key "market_products", "markets", on_update: :cascade, on_delete: :cascade
  add_foreign_key "market_products", "products", on_update: :cascade, on_delete: :cascade
  add_foreign_key "products", "categories", on_update: :cascade, on_delete: :cascade
  add_foreign_key "purchases", "products", on_update: :cascade, on_delete: :cascade
end
