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

ActiveRecord::Schema.define(version: 2018_10_14_220736) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "grant_assignments", force: :cascade do |t|
    t.bigint "grant_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grant_id"], name: "index_grant_assignments_on_grant_id"
    t.index ["user_id"], name: "index_grant_assignments_on_user_id"
  end

  create_table "grants", force: :cascade do |t|
    t.integer "grantable_id", null: false
    t.string "grantable_type", null: false
    t.string "mode", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grantable_id", "grantable_type"], name: "index_grants_on_grantable_id_and_grantable_type", unique: true
    t.index ["grantable_id"], name: "index_grants_on_grantable_id"
    t.index ["grantable_type"], name: "index_grants_on_grantable_type"
  end

  create_table "permission_assignments", force: :cascade do |t|
    t.bigint "permission_id"
    t.bigint "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["permission_id"], name: "index_permission_assignments_on_permission_id"
    t.index ["role_id"], name: "index_permission_assignments_on_role_id"
  end

  create_table "permissions", force: :cascade do |t|
    t.string "resource"
    t.string "action"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resource", "action"], name: "index_permissions_on_resource_and_action", unique: true
    t.index ["resource"], name: "index_permissions_on_resource"
  end

  create_table "role_assignments", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_role_assignments_on_role_id"
    t.index ["user_id", "role_id"], name: "index_role_assignments_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_role_assignments_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "grant_assignments", "grants"
  add_foreign_key "grant_assignments", "users"
  add_foreign_key "permission_assignments", "permissions"
  add_foreign_key "permission_assignments", "roles"
  add_foreign_key "role_assignments", "roles"
  add_foreign_key "role_assignments", "users"
end
