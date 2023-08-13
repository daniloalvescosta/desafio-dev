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

ActiveRecord::Schema[7.0].define(version: 2023_08_13_144712) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cnabs", force: :cascade do |t|
    t.bigint "type_transaction_id", null: false
    t.date "date"
    t.decimal "value"
    t.string "cpf"
    t.string "card"
    t.datetime "hour"
    t.string "owner"
    t.string "store_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type_transaction_id"], name: "index_cnabs_on_type_transaction_id"
  end

  create_table "type_transactions", force: :cascade do |t|
    t.string "description"
    t.string "nature"
    t.string "signal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cnabs", "type_transactions"
end
