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

ActiveRecord::Schema.define(:version => 20140227043410) do

  create_table "chat_rooms", :force => true do |t|
    t.string   "message"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "chatcontents", :force => true do |t|
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "chatiws", :force => true do |t|
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "chats", :force => true do |t|
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "chattings", :force => true do |t|
    t.text     "message"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "comments", :force => true do |t|
    t.string   "commenter"
    t.text     "comment"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "contacts", :force => true do |t|
    t.string "mobile",  :default => "", :null => false
    t.string "address",                 :null => false
  end

  create_table "employees", :force => true do |t|
    t.integer  "userid"
    t.string   "username"
    t.binary   "password"
    t.binary   "confirmpassword"
    t.integer  "age"
    t.date     "birthday"
    t.string   "NRCNo"
    t.string   "Gender"
    t.string   "specialize"
    t.integer  "phno"
    t.string   "address"
    t.integer  "travelfee"
    t.integer  "entryyear"
    t.date     "entrydate"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

<<<<<<< HEAD
  create_table "messages", :force => true do |t|
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "msg_chat_rooms", :force => true do |t|
    t.string   "content"
=======
  add_index "employees", ["email"], :name => "index_employees_on_email", :unique => true
  add_index "employees", ["reset_password_token"], :name => "index_employees_on_reset_password_token", :unique => true

  create_table "forums", :force => true do |t|
    t.string   "title"
    t.text     "content"
>>>>>>> a5fa04c9126fb944b4ee80886f7e71ade6159263
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "random_numbers", :force => true do |t|
    t.string   "Name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

<<<<<<< HEAD
  create_table "room_messages", :force => true do |t|
    t.string   "message"
=======
  create_table "replies", :force => true do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "forum_id"
>>>>>>> a5fa04c9126fb944b4ee80886f7e71ade6159263
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

<<<<<<< HEAD
  create_table "user_msgs", :force => true do |t|
    t.text     "message"
    t.integer  "Chatiw_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "user_msgs", ["Chatiw_id"], :name => "index_user_msgs_on_Chatiw_id"
=======
  add_index "replies", ["forum_id"], :name => "index_replies_on_forum_id"
>>>>>>> a5fa04c9126fb944b4ee80886f7e71ade6159263

end
