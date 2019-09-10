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

ActiveRecord::Schema.define(version: 2019_09_10_203935) do

  create_table "aditions", force: :cascade do |t|
    t.integer "pizza_id", null: false
    t.integer "ingredient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ingredient_id"], name: "index_aditions_on_ingredient_id"
    t.index ["pizza_id"], name: "index_aditions_on_pizza_id"
  end

  create_table "flavors", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pizzas", force: :cascade do |t|
    t.integer "shape_id", null: false
    t.integer "sauce_id", null: false
    t.integer "flavor_id", null: false
    t.integer "size_id", null: false
    t.integer "user_id", null: false
    t.float "total_prices"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["flavor_id"], name: "index_pizzas_on_flavor_id"
    t.index ["sauce_id"], name: "index_pizzas_on_sauce_id"
    t.index ["shape_id"], name: "index_pizzas_on_shape_id"
    t.index ["size_id"], name: "index_pizzas_on_size_id"
    t.index ["user_id"], name: "index_pizzas_on_user_id"
  end

  create_table "sauces", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shapes", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sizes", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "aditions", "ingredients"
  add_foreign_key "aditions", "pizzas"
  add_foreign_key "pizzas", "flavors"
  add_foreign_key "pizzas", "sauces"
  add_foreign_key "pizzas", "shapes"
  add_foreign_key "pizzas", "sizes"
  add_foreign_key "pizzas", "users"
end
