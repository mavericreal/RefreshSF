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

ActiveRecord::Schema.define(:version => 20120428055355) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
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

  create_table "characteristics", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "collaboration_stats", :force => true do |t|
    t.integer  "user_id"
    t.integer  "collaboration_points"
    t.integer  "intros_made"
    t.integer  "family_members_put_together"
    t.integer  "family_size"
    t.integer  "number_of_empathy_stars"
    t.integer  "number_of_purpose_stars"
    t.integer  "number_of_changemaker_stars"
    t.integer  "corresponded_with"
    t.integer  "giver_to"
    t.integer  "receiver_of"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  add_index "collaboration_stats", ["user_id"], :name => "index_collaboration_stats_on_user_id"

  create_table "insights", :force => true do |t|
    t.string   "kind"
    t.integer  "user_gives_insight_id"
    t.string   "comment"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  add_index "insights", ["user_gives_insight_id"], :name => "index_insights_on_user_gives_insight_id"

  create_table "introductions", :force => true do |t|
    t.integer  "user_id"
    t.integer  "user_i_id"
    t.integer  "user_ii_id"
    t.text     "introduction_text"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "introductions", ["user_i_id"], :name => "index_introductions_on_user_i_id"
  add_index "introductions", ["user_id"], :name => "index_introductions_on_user_id"
  add_index "introductions", ["user_ii_id"], :name => "index_introductions_on_user_ii_id"

  create_table "newsletter_users", :force => true do |t|
    t.string "email"
  end

  create_table "relationships", :force => true do |t|
    t.integer  "user_i_id"
    t.integer  "user_ii_id"
    t.boolean  "is_giver_i"
    t.boolean  "is_giver_ii"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "relationships", ["user_i_id"], :name => "index_relationships_on_user_i_id"
  add_index "relationships", ["user_ii_id"], :name => "index_relationships_on_user_ii_id"

  create_table "user_details", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "last_name"
    t.string   "city"
    t.string   "country"
    t.string   "bio"
    t.string   "gender"
    t.string   "gender_advanced"
    t.integer  "year_birth"
    t.string   "lan"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "user_details", ["user_id"], :name => "index_user_details_on_user_id"

  create_table "user_external_services", :force => true do |t|
    t.integer  "user_id"
    t.string   "network"
    t.string   "nid"
    t.string   "username"
    t.string   "url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "user_external_services", ["user_id"], :name => "index_user_external_services_on_user_id"

  create_table "user_gives_insights", :force => true do |t|
    t.integer  "user_i_id"
    t.integer  "user_ii_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "user_gives_insights", ["user_i_id"], :name => "index_user_gives_insights_on_user_i_id"
  add_index "user_gives_insights", ["user_ii_id"], :name => "index_user_gives_insights_on_user_ii_id"

  create_table "user_profile_characteristics", :force => true do |t|
    t.integer  "user_id"
    t.integer  "characteristic_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "user_profile_characteristics", ["characteristic_id"], :name => "index_user_profile_characteristics_on_characteristic_id"
  add_index "user_profile_characteristics", ["user_id"], :name => "index_user_profile_characteristics_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "username"
    t.boolean  "validated"
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

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
