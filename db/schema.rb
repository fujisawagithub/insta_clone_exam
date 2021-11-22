ActiveRecord::Schema.define(version: 2021_11_22_050925) do

  enable_extension "plpgsql"

  create_table "pictures", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.text "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
