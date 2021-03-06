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

ActiveRecord::Schema.define(version: 20160726183956) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cooks", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gardeners", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "produceavailables", force: :cascade do |t|
    t.integer  "produce_id"
    t.integer  "gardener_id"
    t.integer  "quantitystarted"
    t.integer  "quanititytaken"
    t.string   "location"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "produceavailables", ["gardener_id"], name: "index_produceavailables_on_gardener_id", using: :btree
  add_index "produceavailables", ["produce_id"], name: "index_produceavailables_on_produce_id", using: :btree

  create_table "produces", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "produceselecteds", force: :cascade do |t|
    t.integer  "quantity"
    t.integer  "cook_id"
    t.integer  "produceavailable_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "produceselecteds", ["cook_id"], name: "index_produceselecteds_on_cook_id", using: :btree
  add_index "produceselecteds", ["produceavailable_id"], name: "index_produceselecteds_on_produceavailable_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "profile_id"
    t.string   "profile_type"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "produceavailables", "gardeners"
  add_foreign_key "produceavailables", "produces"
  add_foreign_key "produceselecteds", "cooks"
  add_foreign_key "produceselecteds", "produceavailables"
end
