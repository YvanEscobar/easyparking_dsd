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

ActiveRecord::Schema.define(version: 20160728023051) do

  create_table "bookings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.integer  "parking_id"
    t.integer  "spaces"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "payment_method_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["parking_id"], name: "index_bookings_on_parking_id", using: :btree
    t.index ["payment_method_id"], name: "index_bookings_on_payment_method_id", using: :btree
    t.index ["user_id"], name: "index_bookings_on_user_id", using: :btree
  end

  create_table "cities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "districts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_districts_on_city_id", using: :btree
  end

  create_table "features_per_parkings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "parking_id"
    t.integer  "parking_feature_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["parking_feature_id"], name: "index_features_per_parkings_on_parking_feature_id", using: :btree
    t.index ["parking_id"], name: "index_features_per_parkings_on_parking_id", using: :btree
  end

  create_table "parking_features", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parking_features_parkings", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "parking_id",         null: false
    t.integer "parking_feature_id", null: false
  end

  create_table "parking_schedules", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "parking_id"
    t.integer  "day_of_week"
    t.time     "start_time"
    t.time     "end_time"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["parking_id"], name: "index_parking_schedules_on_parking_id", using: :btree
  end

  create_table "parking_types", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parkings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.string   "name"
    t.text     "description",        limit: 65535
    t.integer  "parking_type_id"
    t.integer  "spaces"
    t.text     "address",            limit: 65535
    t.integer  "district_id"
    t.decimal  "price_per_hour",                   precision: 10
    t.date     "start_date"
    t.date     "end_date"
    t.boolean  "published"
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.index ["district_id"], name: "index_parkings_on_district_id", using: :btree
    t.index ["parking_type_id"], name: "index_parkings_on_parking_type_id", using: :btree
    t.index ["user_id"], name: "index_parkings_on_user_id", using: :btree
  end

  create_table "payment_methods", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ratings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.integer  "parking_id"
    t.integer  "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parking_id"], name: "index_ratings_on_parking_id", using: :btree
    t.index ["user_id"], name: "index_ratings_on_user_id", using: :btree
  end

  create_table "reviews", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.integer  "parking_id"
    t.text     "content",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["parking_id"], name: "index_reviews_on_parking_id", using: :btree
    t.index ["user_id"], name: "index_reviews_on_user_id", using: :btree
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "address"
    t.integer  "district_id"
    t.string   "phone"
    t.index ["district_id"], name: "index_users_on_district_id", using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "bookings", "parkings"
  add_foreign_key "bookings", "payment_methods"
  add_foreign_key "bookings", "users"
  add_foreign_key "districts", "cities"
  add_foreign_key "features_per_parkings", "parking_features"
  add_foreign_key "features_per_parkings", "parkings"
  add_foreign_key "parking_schedules", "parkings"
  add_foreign_key "parkings", "districts"
  add_foreign_key "parkings", "parking_types"
  add_foreign_key "parkings", "users"
  add_foreign_key "ratings", "parkings"
  add_foreign_key "ratings", "users"
  add_foreign_key "reviews", "parkings"
  add_foreign_key "reviews", "users"
  add_foreign_key "users", "districts"
end
