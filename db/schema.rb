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

ActiveRecord::Schema.define(version: 20150711100105) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: true do |t|
    t.text   "name"
    t.string "password"
    t.string "user_id"
    t.float  "balance_on_hold",   default: 0.0
    t.float  "balance_confirmed", default: 0.0
    t.string "state",             default: "moderating"
  end

  create_table "link_visits", force: true do |t|
    t.string  "sub_id"
    t.integer "customer_id"
    t.integer "offer_id"
    t.text    "redirect_link"
  end

  create_table "offers", force: true do |t|
    t.text    "name"
    t.text    "description"
    t.integer "partner_shop_id"
    t.string  "reward_type"
    t.integer "hold_period"
    t.float   "fixed_cash"
    t.float   "percent"
    t.text    "referrer_link_head"
    t.string  "state"
  end

  create_table "orders", force: true do |t|
    t.integer "partner_shop_id"
    t.integer "amount_of_items"
    t.float   "full_value"
    t.float   "system_reward"
  end

  create_table "partner_shops", force: true do |t|
    t.text    "name"
    t.text    "reward_type"
    t.integer "hold_period"
  end

  create_table "rewards", force: true do |t|
    t.integer  "link_visit_id"
    t.integer  "order_id"
    t.integer  "offer_id"
    t.float    "value"
    t.string   "state"
    t.datetime "hold_period_end"
  end

end
