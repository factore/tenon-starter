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

ActiveRecord::Schema.define(version: 20160503174861) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "settings", force: :cascade do |t|
    t.string   "var",                   null: false
    t.text     "value"
    t.integer  "thing_id"
    t.string   "thing_type", limit: 30
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["thing_type", "thing_id", "var"], name: "index_settings_on_thing_type_and_thing_id_and_var", unique: true, using: :btree
  end

  create_table "tenon_assets", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encoded_state"
    t.string   "output_url"
    t.string   "aspect_ratio"
    t.integer  "duration_in_ms"
    t.integer  "job_id"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.string   "attachment_file_name"
    t.index ["created_at"], name: "index_assets_on_created_at", using: :btree
    t.index ["job_id"], name: "index_assets_on_job_id", using: :btree
  end

  create_table "tenon_item_assets", force: :cascade do |t|
    t.integer  "asset_id"
    t.integer  "item_id"
    t.string   "item_type"
    t.string   "asset_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["asset_id"], name: "index_item_assets_on_asset_id", using: :btree
    t.index ["item_id", "item_type"], name: "index_item_assets_on_item_id_and_item_type", using: :btree
  end

  create_table "tenon_item_versions", force: :cascade do |t|
    t.integer  "item_id"
    t.string   "item_type"
    t.binary   "attrs"
    t.string   "title"
    t.string   "save_type"
    t.integer  "creator_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["item_id", "item_type"], name: "index_tenon_item_versions_on_item_id_and_item_type", using: :btree
  end

  create_table "tenon_tenon_content_pieces", force: :cascade do |t|
    t.integer  "row_id"
    t.integer  "position"
    t.text     "content"
    t.string   "caption"
    t.string   "link_url"
    t.string   "embed_url"
    t.string   "piece_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "show_caption",    default: false
    t.text     "embed_code"
    t.boolean  "stretch_to_fill", default: false
    t.integer  "size"
    t.index ["row_id"], name: "index_tenon_content_pieces_on_row_id", using: :btree
  end

  create_table "tenon_tenon_content_rows", force: :cascade do |t|
    t.integer  "item_id"
    t.string   "item_type"
    t.string   "item_method"
    t.integer  "list_order"
    t.string   "row_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["item_id"], name: "index_tenon_content_rows_on_item_id", using: :btree
  end

end
