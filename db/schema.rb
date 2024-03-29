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

ActiveRecord::Schema.define(version: 20150802003343) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "email"
    t.string   "password_hash"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "name"
  end

  create_table "enquiries", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.text     "service_description"
    t.string   "phone"
    t.string   "entity"
    t.string   "budget"
    t.string   "deadline"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "modals", force: :cascade do |t|
    t.string   "css_id"
    t.string   "aria_label"
    t.string   "h2"
    t.string   "upper_para"
    t.string   "lower_para"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "group"
  end

end
