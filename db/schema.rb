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

ActiveRecord::Schema.define(:version => 20130715105953) do

  create_table "calendar_entries", :force => true do |t|
    t.datetime "date",       :limit => 255
    t.string   "content"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "slot"
    t.integer  "user_id"
    t.integer  "calories"
  end

  create_table "posts", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
  end

  create_table "tanukis", :force => true do |t|
    t.boolean  "male"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "nature"
    t.integer  "name"
    t.integer  "hue",        :default => 0
    t.integer  "sepia",      :default => 0
    t.integer  "brightness", :default => 0
    t.integer  "user_id"
  end

  create_table "tasks", :force => true do |t|
    t.string   "icon"
    t.string   "description"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.boolean  "completed",   :default => false
    t.integer  "user_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.boolean  "admin",                  :default => false
    t.integer  "tanuki_limit",           :default => 1
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
