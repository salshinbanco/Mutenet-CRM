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

ActiveRecord::Schema.define(version: 20140314063746) do

  create_table "companies", force: true do |t|
    t.string   "company"
    t.string   "kana"
    t.string   "first_address_number"
    t.string   "second_address_number"
    t.string   "prefecture"
    t.string   "city"
    t.string   "town"
    t.string   "phone_number1"
    t.string   "phone_number2"
    t.string   "phone_number3"
    t.string   "fax_number1"
    t.string   "fax_number2"
    t.string   "fax_number3"
    t.string   "mail_address"
    t.string   "hp_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end