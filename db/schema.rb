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

ActiveRecord::Schema.define(version: 0) do

  create_table "queries", :options => 'ENGINE=MyISAM', force: true do |t|
    t.string   "uuid",           limit: 250
    t.float    "lat",                        null: false
    t.float    "lng",                        null: false
    t.float    "execution_time",             null: false
    t.integer  "gps_accuracy",               null: false
    t.integer  "mode",           limit: 1,   null: false
    t.datetime "created_at",                 null: false
  end

  create_table "stores", :options => 'ENGINE=MyISAM', force: true do |t|
    t.string  "name",          limit: 250, default: "",   null: false
    t.string  "subname",       limit: 250, default: "",   null: false
    t.string  "phone",         limit: 250, default: "",   null: false
    t.string  "address",       limit: 250, default: "",   null: false
    t.string  "city",          limit: 100, default: "",   null: false
    t.string  "province",      limit: 50,  default: "",   null: false
    t.string  "postalCode",    limit: 25,  default: "",   null: false
    t.float   "lat",                                      null: false
    t.float   "lng",                                      null: false
    t.integer "store_type",    limit: 1
    t.boolean "active",                    default: true, null: false
  end

end
