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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130829130333) do

  create_table "review_browser_comments", :force => true do |t|
    t.integer  "review_id"
    t.string   "type"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "review_browser_companies", :force => true do |t|
    t.string   "name"
    t.string   "city"
    t.string   "country"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "review_browser_domains", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "review_browser_notes", :force => true do |t|
    t.integer  "review_id"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "review_browser_opinion_expressions", :force => true do |t|
    t.integer  "review_id"
    t.integer  "domain_id"
    t.text     "body"
    t.string   "sentiment"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "review_browser_ratings", :force => true do |t|
    t.integer  "review_id"
    t.string   "topic"
    t.integer  "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "review_browser_reviewers", :force => true do |t|
    t.integer  "review_id"
    t.string   "name"
    t.string   "location"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "review_browser_reviews", :force => true do |t|
    t.string   "review_id"
    t.integer  "company_id"
    t.string   "reservation_number"
    t.string   "age_group"
    t.boolean  "recommend"
    t.text     "manager_response"
    t.string   "visit_reason"
    t.string   "language"
    t.string   "reviewer_type"
    t.string   "source_name"
    t.date     "review_date"
    t.date     "visit_date"
    t.text     "title"
    t.string   "trip_type"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "sentiment"
  end

  create_table "review_browser_starred_reviews", :force => true do |t|
    t.string   "review_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "review_browser_tasks", :force => true do |t|
    t.integer  "review_id"
    t.string   "email"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
