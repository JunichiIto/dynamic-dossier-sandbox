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

ActiveRecord::Schema.define(version: 20141005045250) do

  create_table "dynamic_reports", force: true do |t|
    t.string   "name"
    t.text     "sql"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "report_params", force: true do |t|
    t.integer  "dynamic_report_id"
    t.string   "name"
    t.string   "param_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "report_params", ["dynamic_report_id"], name: "index_report_params_on_dynamic_report_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.date     "birthday"
    t.integer  "annual_income"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
