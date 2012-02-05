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

ActiveRecord::Schema.define(:version => 20120205210921) do

  create_table "active_admin_comments", :force => true do |t|
    t.integer  "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
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
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "consultants", :force => true do |t|
    t.integer  "admin_user_id"
    t.integer  "days_per_project"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "customers", :force => true do |t|
    t.string   "email"
    t.string   "name"
    t.string   "url"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "features", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "priority"
    t.boolean  "mvp_approved"
    t.string   "trello_card_id"
    t.integer  "project_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "kublog_categories", :force => true do |t|
    t.string   "name"
    t.string   "slug"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "kublog_categories", ["name"], :name => "index_kublog_categories_on_name"
  add_index "kublog_categories", ["slug"], :name => "index_kublog_categories_on_slug", :unique => true

  create_table "kublog_comments", :force => true do |t|
    t.text     "body"
    t.integer  "user_id"
    t.integer  "post_id"
    t.string   "author_name"
    t.string   "author_email"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "kublog_comments", ["post_id"], :name => "index_kublog_comments_on_post_id"
  add_index "kublog_comments", ["user_id"], :name => "index_kublog_comments_on_user_id"

  create_table "kublog_images", :force => true do |t|
    t.string   "alt"
    t.string   "file"
    t.integer  "file_width"
    t.integer  "file_height"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "kublog_notifications", :force => true do |t|
    t.string   "kind"
    t.text     "content"
    t.integer  "provider_id"
    t.integer  "post_id"
    t.datetime "sent_at"
    t.datetime "created_at"
    t.text     "roles"
    t.integer  "times_delivered", :default => 0
  end

  add_index "kublog_notifications", ["kind"], :name => "index_kublog_notifications_on_kind"
  add_index "kublog_notifications", ["post_id"], :name => "index_kublog_notifications_on_post_id"

  create_table "kublog_posts", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "user_id"
    t.integer  "category_id"
    t.string   "slug"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "kublog_posts", ["category_id"], :name => "index_kublog_posts_on_category_id"
  add_index "kublog_posts", ["slug"], :name => "index_kublog_posts_on_slug", :unique => true
  add_index "kublog_posts", ["title"], :name => "index_kublog_posts_on_title"
  add_index "kublog_posts", ["user_id"], :name => "index_kublog_posts_on_user_id"

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.string   "slug"
    t.integer  "author_id"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pricing_models", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.string   "target_market"
    t.integer  "pricing_model_id"
    t.text     "description"
    t.string   "status"
    t.string   "trello_card_id"
    t.integer  "schedule_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "schedules", :force => true do |t|
    t.integer  "project_id"
    t.datetime "complete_by"
    t.integer  "consultant_id"
    t.datetime "delivered_on"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "unavailable_schedules", :force => true do |t|
    t.integer  "consultant_id"
    t.datetime "starts_on"
    t.datetime "ends_on"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "users", :force => true do |t|
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
    t.boolean  "staff"
    t.boolean  "alpha"
    t.boolean  "beta"
    t.integer  "customer_id"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
