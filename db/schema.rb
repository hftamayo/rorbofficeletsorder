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

ActiveRecord::Schema.define(version: 2022_05_28_211932) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "prodlines", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "isactive"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_prodlines_on_name", unique: true
  end

  create_table "prodproviders", force: :cascade do |t|
    t.string "name"
    t.string "contactname"
    t.boolean "isactive"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "productcatalogs", force: :cascade do |t|
    t.string "name"
    t.string "string"
    t.string "description"
    t.integer "minquality"
    t.integer "maxquantity"
    t.decimal "price"
    t.boolean "isavailable"
    t.bigint "prodproviders_id", null: false
    t.bigint "prodlines_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["prodlines_id"], name: "index_productcatalogs_on_prodlines_id"
    t.index ["prodproviders_id"], name: "index_productcatalogs_on_prodproviders_id"
  end

  create_table "productlines", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.text "description"
    t.boolean "isactive"
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

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "productcatalogs", "prodlines", column: "prodlines_id"
  add_foreign_key "productcatalogs", "prodproviders", column: "prodproviders_id"
  add_foreign_key "products", "prodlines", column: "prodlines_id"
  add_foreign_key "products", "providers", column: "providers_id"
end
