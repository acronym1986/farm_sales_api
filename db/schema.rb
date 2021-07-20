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

ActiveRecord::Schema.define(version: 2021_07_20_145103) do

  create_table "farm_tasks", force: :cascade do |t|
    t.decimal "pick_quantity"
    t.decimal "plant_quantity"
    t.string "location"
    t.date "task_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name"
    t.decimal "price"
    t.integer "farm_task_id", null: false
    t.integer "stall_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["farm_task_id"], name: "index_products_on_farm_task_id"
    t.index ["stall_id"], name: "index_products_on_stall_id"
  end

  create_table "sales", force: :cascade do |t|
    t.decimal "sold_quantity"
    t.decimal "leftover_quantity"
    t.decimal "annual_sale"
    t.decimal "week_sale"
    t.integer "stall_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["stall_id"], name: "index_sales_on_stall_id"
  end

  create_table "stalls", force: :cascade do |t|
    t.decimal "product_quantity"
    t.string "location"
    t.date "store_date"
    t.decimal "cost"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_stalls_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "products", "farm_tasks"
  add_foreign_key "products", "stalls"
  add_foreign_key "sales", "stalls"
  add_foreign_key "stalls", "users"
end
