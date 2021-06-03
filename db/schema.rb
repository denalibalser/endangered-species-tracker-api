ActiveRecord::Schema.define(version: 2021_03_22_162208) do

  create_table "animal_cards", force: :cascade do |t|
    t.string "common_name"
    t.string "scientific_name"
    t.string "endangered_level"
    t.string "url"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_animal_cards_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "animal_cards", "users"
end
