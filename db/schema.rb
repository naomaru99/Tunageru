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

ActiveRecord::Schema.define(version: 20151003082407) do

  create_table "message_rooms", force: :cascade do |t|
    t.integer  "student_id", limit: 4
    t.integer  "worker_id",  limit: 4
    t.integer  "message_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "messages", force: :cascade do |t|
    t.integer  "messagable_id",   limit: 4
    t.string   "messagable_type", limit: 255
    t.text     "text",            limit: 65535
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "email",                   limit: 255,   default: "", null: false
    t.string   "encrypted_password",      limit: 255,   default: "", null: false
    t.string   "reset_password_token",    limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",           limit: 4,     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",      limit: 255
    t.string   "last_sign_in_ip",         limit: 255
    t.string   "family_name",             limit: 255
    t.string   "first_name",              limit: 255
    t.string   "family_name_kana",        limit: 255
    t.string   "first_name_kana",         limit: 255
    t.text     "image",                   limit: 65535
    t.string   "sex",                     limit: 255
    t.string   "age",                     limit: 255
    t.string   "area",                    limit: 255
    t.string   "university",              limit: 255
    t.string   "industry_interested",     limit: 255
    t.string   "job_category_interested", limit: 255
    t.text     "introduce",               limit: 65535
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.string   "avatar_file_name",        limit: 255
    t.string   "avatar_content_type",     limit: 255
    t.integer  "avatar_file_size",        limit: 4
    t.datetime "avatar_updated_at"
  end

  add_index "students", ["email"], name: "index_students_on_email", unique: true, using: :btree
  add_index "students", ["reset_password_token"], name: "index_students_on_reset_password_token", unique: true, using: :btree

  create_table "workers", force: :cascade do |t|
    t.string   "email",                  limit: 255,   default: "", null: false
    t.string   "encrypted_password",     limit: 255,   default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "family_name",            limit: 255
    t.string   "first_name",             limit: 255
    t.string   "family_name_kana",       limit: 255
    t.string   "first_name_kana",        limit: 255
    t.text     "image",                  limit: 65535
    t.string   "sex",                    limit: 255
    t.string   "age",                    limit: 255
    t.string   "area",                   limit: 255
    t.string   "graduated_university",   limit: 255
    t.string   "company",                limit: 255
    t.string   "industry",               limit: 255
    t.string   "job_category",           limit: 255
    t.string   "position",               limit: 255
    t.text     "introduce",              limit: 65535
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "avatar_file_name",       limit: 255
    t.string   "avatar_content_type",    limit: 255
    t.integer  "avatar_file_size",       limit: 4
    t.datetime "avatar_updated_at"
  end

  add_index "workers", ["email"], name: "index_workers_on_email", unique: true, using: :btree
  add_index "workers", ["reset_password_token"], name: "index_workers_on_reset_password_token", unique: true, using: :btree

end
