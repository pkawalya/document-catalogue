# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_24_131218) do

  create_table "blocks", force: :cascade do |t|
    t.string "name"
    t.integer "branch_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["branch_id"], name: "index_blocks_on_branch_id"
  end

  create_table "branches", force: :cascade do |t|
    t.string "name"
    t.integer "country_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_branches_on_country_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "documents", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "vendor_id", null: false
    t.integer "category_id", null: false
    t.integer "folder_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "attachment"
    t.index ["category_id"], name: "index_documents_on_category_id"
    t.index ["folder_id"], name: "index_documents_on_folder_id"
    t.index ["vendor_id"], name: "index_documents_on_vendor_id"
  end

  create_table "folders", force: :cascade do |t|
    t.string "name"
    t.integer "shelf_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["shelf_id"], name: "index_folders_on_shelf_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.integer "block_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["block_id"], name: "index_rooms_on_block_id"
  end

  create_table "sections", force: :cascade do |t|
    t.string "name"
    t.integer "room_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["room_id"], name: "index_sections_on_room_id"
  end

  create_table "shelves", force: :cascade do |t|
    t.string "name"
    t.integer "section_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["section_id"], name: "index_shelves_on_section_id"
  end

  create_table "vendors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "blocks", "branches"
  add_foreign_key "branches", "countries"
  add_foreign_key "documents", "categories"
  add_foreign_key "documents", "folders"
  add_foreign_key "documents", "vendors"
  add_foreign_key "folders", "shelves"
  add_foreign_key "rooms", "blocks"
  add_foreign_key "sections", "rooms"
  add_foreign_key "shelves", "sections"
end
