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

ActiveRecord::Schema.define(:version => 20121013055826) do

  create_table "campaign_faqs", :force => true do |t|
    t.integer  "campaign_id"
    t.string   "question",                   :null => false
    t.string   "answer",                     :null => false
    t.integer  "sort_order",  :default => 0
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "campaign_levels", :force => true do |t|
    t.integer  "campaign_id"
    t.string   "title",                                     :null => false
    t.decimal  "cost",        :precision => 8, :scale => 2, :null => false
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  create_table "campaign_sections", :force => true do |t|
    t.integer  "campaign_id"
    t.string   "title",                             :null => false
    t.text     "text",                              :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "sort_order",         :default => 0
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  create_table "campaigns", :force => true do |t|
    t.string   "name",                                                              :null => false
    t.decimal  "goal",              :precision => 8, :scale => 2,                   :null => false
    t.string   "domain"
    t.string   "tagline"
    t.string   "secondary_tagline"
    t.text     "blurb"
    t.datetime "start_time"
    t.integer  "user_id"
    t.boolean  "show_link",                                       :default => true
    t.datetime "created_at",                                                        :null => false
    t.datetime "updated_at",                                                        :null => false
  end

  create_table "orders", :id => false, :force => true do |t|
    t.string   "address_one"
    t.string   "address_two"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "country"
    t.string   "user_id"
    t.decimal  "price"
    t.string   "phone"
    t.string   "name"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "card_id"
    t.string   "transaction_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
