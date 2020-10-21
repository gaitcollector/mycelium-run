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

ActiveRecord::Schema.define(version: 2020_10_21_020501) do

  create_table "lc_runs", force: :cascade do |t|
    t.string "strain"
    t.text "description"
    t.boolean "inoculated"
    t.datetime "inoculated_at"
    t.boolean "run_started"
    t.datetime "run_started_at"
    t.boolean "fully_colonised"
    t.datetime "fully_colonised_at"
    t.text "logbook"
    t.text "recipe"
    t.integer "mycelium_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["mycelium_id"], name: "index_lc_runs_on_mycelium_id"
  end

  create_table "mycelia", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "petri_runs", force: :cascade do |t|
    t.string "strain"
    t.text "description"
    t.boolean "inoculated"
    t.datetime "inoculated_at"
    t.boolean "run_started"
    t.datetime "run_started_at"
    t.boolean "fully_colonised"
    t.datetime "fully_colonised_at"
    t.text "logbook"
    t.text "recipe"
    t.integer "mycelium_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["mycelium_id"], name: "index_petri_runs_on_mycelium_id"
  end

  create_table "spawn_runs", force: :cascade do |t|
    t.string "strain"
    t.text "description"
    t.boolean "inoculated"
    t.datetime "inoculated_at"
    t.boolean "run_started"
    t.datetime "run_started_at"
    t.boolean "fully_colonised"
    t.datetime "fully_colonised_at"
    t.text "logbook"
    t.text "recipe"
    t.integer "mycelium_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["mycelium_id"], name: "index_spawn_runs_on_mycelium_id"
  end

  create_table "substrate_runs", force: :cascade do |t|
    t.string "strain"
    t.text "description"
    t.boolean "inoculated"
    t.datetime "inoculated_at"
    t.boolean "run_started"
    t.datetime "run_started_at"
    t.boolean "fully_colonised"
    t.datetime "fully_colonised_at"
    t.boolean "primodia_formed"
    t.datetime "primodia_formed_at"
    t.text "logbook"
    t.text "recipe"
    t.integer "mycelium_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["mycelium_id"], name: "index_substrate_runs_on_mycelium_id"
  end

  add_foreign_key "lc_runs", "mycelia"
  add_foreign_key "petri_runs", "mycelia"
  add_foreign_key "spawn_runs", "mycelia"
  add_foreign_key "substrate_runs", "mycelia"
end
