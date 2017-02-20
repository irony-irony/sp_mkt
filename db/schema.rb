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

ActiveRecord::Schema.define(version: 20170217062648) do

  create_table "amenities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "facility"
    t.string "facility_eng"
  end

  create_table "areas", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "postal_code",                null: false
    t.integer "prefecture_id"
    t.string  "city",          default: ""
    t.string  "street",        default: ""
    t.index ["prefecture_id"], name: "index_areas_on_prefecture_id", using: :btree
  end

  create_table "capacities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "capa"
  end

  create_table "event_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "purpose"
    t.string "purpose_eng"
  end

  create_table "prefectures", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "prefecture"
    t.string "prefecture_eng"
  end

  create_table "room_amenities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "room_id",    null: false
    t.integer "amenity_id", null: false
    t.index ["amenity_id"], name: "index_room_amenities_on_amenity_id", using: :btree
    t.index ["room_id"], name: "index_room_amenities_on_room_id", using: :btree
  end

  create_table "room_event_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "room_id",        null: false
    t.integer "event_types_id", null: false
    t.index ["event_types_id"], name: "index_room_event_types_on_event_types_id", using: :btree
    t.index ["room_id"], name: "index_room_event_types_on_room_id", using: :btree
  end

  create_table "rooms", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "title",           limit: 65535
    t.integer  "capacity"
    t.string   "area"
    t.string   "space_type"
    t.text     "about_space",     limit: 65535
    t.text     "about_amenities", limit: 65535
    t.text     "about_eating",    limit: 65535
    t.text     "about_cleaning",  limit: 65535
    t.integer  "square"
    t.string   "start_time"
    t.string   "end_time"
    t.string   "fil"
    t.integer  "space_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "space_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "space_sort"
    t.string "space_sort_eng"
  end

  create_table "spaces", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.text     "description", limit: 65535
    t.text     "access",      limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "postal_dode"
    t.text     "address",     limit: 65535
    t.integer  "area_id"
    t.index ["area_id"], name: "index_spaces_on_area_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "family_name"
    t.string   "given_name"
    t.string   "avator"
    t.boolean  "agreement"
    t.string   "provider"
    t.string   "uid"
    t.string   "token"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "room_amenities", "amenities"
  add_foreign_key "room_amenities", "rooms"
  add_foreign_key "room_event_types", "event_types", column: "event_types_id"
  add_foreign_key "room_event_types", "rooms"
  add_foreign_key "spaces", "areas"
end
