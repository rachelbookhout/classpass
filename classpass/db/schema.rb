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

ActiveRecord::Schema.define(version: 20150110151052) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "classes", force: true do |t|
    t.string   "name"
    t.integer  "studio_id"
    t.integer  "type_id"
    t.integer  "time_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "day_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "days", force: true do |t|
    t.string "day_of_week"
  end

  create_table "studios", force: true do |t|
    t.string "name"
    t.string "address"
  end

  create_table "teachers", force: true do |t|
    t.string  "full_name"
    t.string  "first_name"
    t.string  "last_name"
    t.integer "studio_id"
  end

  create_table "times", force: true do |t|
    t.string "time_of_day"
  end

  create_table "types", force: true do |t|
    t.string "exercise"
    t.string "variant"
  end

end
