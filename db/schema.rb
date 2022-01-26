# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_01_26_055600) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "base_items", force: :cascade do |t|
    t.string "name"
    t.integer "basePrice"
    t.integer "quality"
    t.integer "categoryid"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.integer "base_itemid"
    t.integer "main_itemid"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "main_items", force: :cascade do |t|
    t.string "name"
    t.integer "basePrice"
    t.integer "quality"
    t.integer "categoryid"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.integer "result"
    t.integer "itemid"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "refiners", force: :cascade do |t|
    t.string "name"
    t.integer "categoryid"
    t.integer "itemsid"
    t.boolean "open"
    t.integer "ordersProgress"
    t.integer "ordersDone"
    t.boolean "use"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_usernames", force: :cascade do |t|
    t.string "alias"
    t.string "storeName"
    t.string "password_digest"
    t.integer "totalGold"
    t.integer "currentGold"
    t.integer "storage"
    t.integer "storeSpace"
    t.integer "storageitems"
    t.integer "storeitems"
    t.string "emblem"
    t.integer "reputation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
