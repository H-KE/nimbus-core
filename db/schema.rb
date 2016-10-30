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

ActiveRecord::Schema.define(version: 20161030193844) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "order_details", force: :cascade do |t|
    t.decimal  "price"
    t.string   "quantity"
    t.decimal  "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "order_id"
    t.integer  "product_id"
    t.string   "name"
    t.index ["order_id"], name: "index_order_details_on_order_id", using: :btree
    t.index ["product_id"], name: "index_order_details_on_product_id", using: :btree
  end

  create_table "orders", force: :cascade do |t|
    t.decimal  "total_price"
    t.string   "status",               default: "verifying", null: false
    t.string   "ship_date"
    t.string   "distribution_channel"
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.integer  "user_id"
    t.integer  "retailer_id"
    t.string   "address"
    t.decimal  "delivery_fee",         default: "0.0",       null: false
    t.string   "tracking_number"
    t.decimal  "tax_amount",           default: "0.0",       null: false
    t.string   "help_desk_ticket_id"
    t.string   "etransfer_link"
    t.string   "carrier_code"
    t.index ["help_desk_ticket_id"], name: "index_orders_on_help_desk_ticket_id", where: "((help_desk_ticket_id)::text <> NULL::text)", using: :btree
    t.index ["retailer_id"], name: "index_orders_on_retailer_id", using: :btree
    t.index ["user_id"], name: "index_orders_on_user_id", using: :btree
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "retailer_id"
    t.json     "images"
    t.json     "prices"
    t.json     "price_labels"
    t.decimal  "thc"
    t.decimal  "cbd"
    t.string   "subspecies"
    t.string   "category"
    t.string   "thumbnail"
    t.index ["retailer_id"], name: "index_products_on_retailer_id", using: :btree
  end

  create_table "retailers", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.text     "address"
    t.string   "image_url"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.boolean  "mail"
    t.boolean  "delivery"
    t.boolean  "pickup"
    t.string   "email"
    t.string   "phone_number"
    t.decimal  "shipping_fee",      default: "0.0",  null: false
    t.string   "help_desk_type",    default: "NONE"
    t.string   "help_desk_api_url"
    t.string   "help_desk_auth"
    t.string   "bio"
    t.decimal  "free_shipping_cap"
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "name"
    t.string   "nickname"
    t.string   "image"
    t.string   "email"
    t.json     "tokens"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.text     "first_name"
    t.text     "last_name"
    t.string   "stripe_customer_id"
    t.json     "address"
    t.index ["email"], name: "index_users_on_email", using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true, using: :btree
  end

  create_table "verification_documents", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "verification_type"
    t.string   "verification_url"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["user_id"], name: "index_verification_documents_on_user_id", using: :btree
  end

  add_foreign_key "order_details", "orders"
  add_foreign_key "order_details", "products"
  add_foreign_key "orders", "retailers"
  add_foreign_key "orders", "users"
  add_foreign_key "products", "retailers"
  add_foreign_key "verification_documents", "users"
end
