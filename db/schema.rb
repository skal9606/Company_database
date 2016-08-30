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

ActiveRecord::Schema.define(version: 20160829004512) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.text     "name"
    t.text     "overview"
    t.text     "image"
    t.text     "industry"
    t.text     "CEO"
    t.text     "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies_followers", force: :cascade do |t|
    t.integer "company_id"
    t.integer "follower_id"
  end

  create_table "companies_investors", id: false, force: :cascade do |t|
    t.integer "company_id"
    t.integer "investor_id"
  end

  create_table "employees", force: :cascade do |t|
    t.text     "name"
    t.text     "role"
    t.text     "previous"
    t.text     "education"
    t.text     "image"
    t.text     "age"
    t.text     "email"
    t.text     "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "followers", force: :cascade do |t|
    t.text     "name"
    t.text     "image"
    t.text     "follows1"
    t.text     "follows2"
    t.text     "follows3"
    t.text     "education"
    t.text     "age"
    t.text     "blurb"
    t.text     "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "investors", force: :cascade do |t|
    t.text     "name"
    t.text     "image"
    t.text     "education"
    t.text     "age"
    t.text     "experience"
    t.text     "blurb"
    t.text     "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.text     "title"
    t.text     "role"
    t.text     "salary"
    t.text     "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
