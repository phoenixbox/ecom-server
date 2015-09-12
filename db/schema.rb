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

ActiveRecord::Schema.define(version: 20150912220127) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "authentications", force: :cascade do |t|
    t.string  "uid",        null: false
    t.string  "provider",   null: false
    t.string  "token",      null: false
    t.integer "user_id",    null: false
    t.string  "token_type", null: false
    t.integer "expiration", null: false
  end

  add_index "authentications", ["user_id"], name: "index_authentications_on_user_id", using: :btree

  create_table "events", force: :cascade do |t|
    t.string   "title",       null: false
    t.text     "description"
    t.integer  "date",        null: false
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "events", ["user_id"], name: "index_events_on_user_id", using: :btree

  create_table "facebook_profiles", force: :cascade do |t|
    t.string  "uid",               null: false
    t.string  "username"
    t.string  "display_name",      null: false
    t.string  "email",             null: false
    t.integer "authentication_id", null: false
    t.string  "token",             null: false
    t.hstore  "raw"
  end

  add_index "facebook_profiles", ["raw"], name: "index_facebook_profiles_on_raw", using: :gin

  create_table "invites", force: :cascade do |t|
    t.integer "delivery_cd"
    t.integer "state_cd"
    t.integer "invitee_uuid"
    t.integer "invitee_platform_cd"
    t.integer "event_id"
  end

  add_index "invites", ["delivery_cd"], name: "index_invites_on_delivery_cd", using: :btree
  add_index "invites", ["event_id"], name: "index_invites_on_event_id", using: :btree
  add_index "invites", ["invitee_platform_cd"], name: "index_invites_on_invitee_platform_cd", using: :btree
  add_index "invites", ["invitee_uuid"], name: "index_invites_on_invitee_uuid", using: :btree
  add_index "invites", ["state_cd"], name: "index_invites_on_state_cd", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",       null: false
    t.string   "encrypted_password",     default: "",       null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,        null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.string   "display_name"
    t.string   "uuid"
    t.string   "access_token"
    t.string   "roles",                  default: ["user"], null: false, array: true
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["roles"], name: "index_users_on_roles", using: :gin

end
