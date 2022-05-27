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

ActiveRecord::Schema.define(version: 2022_05_26_210811) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "prodlines", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "isactive"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_prodlines_on_name", unique: true
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "minquantity"
    t.integer "maxquantity"
    t.decimal "price"
    t.boolean "isavailable"
    t.bigint "providers_id", null: false
    t.bigint "prodlines_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_products_on_name", unique: true
    t.index ["prodlines_id"], name: "index_products_on_prodlines_id"
    t.index ["providers_id"], name: "index_products_on_providers_id"
  end

  create_table "providers", force: :cascade do |t|
    t.string "name"
    t.string "contactname"
    t.boolean "isactive"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_providers_on_name", unique: true
  end

  add_foreign_key "products", "prodlines", column: "prodlines_id"
  add_foreign_key "products", "providers", column: "providers_id"
end
