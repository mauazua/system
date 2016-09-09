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

ActiveRecord::Schema.define(version: 20160907151927) do

  create_table "choices", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "teacher_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "choices", ["teacher_id"], name: "index_choices_on_teacher_id"
  add_index "choices", ["user_id"], name: "index_choices_on_user_id"

  create_table "fields", force: :cascade do |t|
    t.string  "name"
    t.integer "parent_id"
    t.integer "taxonomy_id"
  end

  add_index "fields", ["taxonomy_id"], name: "index_fields_on_taxonomy_id"

  create_table "person_fields", force: :cascade do |t|
    t.integer "fieldable_id"
    t.string  "fieldable_type"
    t.integer "field_id"
    t.integer "score",          default: 0
  end

  add_index "person_fields", ["field_id"], name: "index_person_fields_on_field_id"
  add_index "person_fields", ["fieldable_type", "fieldable_id"], name: "index_person_fields_on_fieldable_type_and_fieldable_id"

  create_table "taxonomies", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "email"
    t.string "first_name"
    t.string "last_name"
  end

  add_index "teachers", ["email"], name: "index_teachers_on_email", unique: true

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
