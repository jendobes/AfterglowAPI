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

ActiveRecord::Schema.define(version: 2020_04_05_222426) do

  create_table "concern_ingredients", force: :cascade do |t|
    t.integer "concern_id"
    t.integer "ingredient_id"
    t.index ["concern_id"], name: "index_concern_ingredients_on_concern_id"
    t.index ["ingredient_id"], name: "index_concern_ingredients_on_ingredient_id"
  end

  create_table "concern_products", force: :cascade do |t|
    t.integer "concern_id"
    t.integer "product_id"
    t.index ["concern_id"], name: "index_concern_products_on_concern_id"
    t.index ["product_id"], name: "index_concern_products_on_product_id"
  end

  create_table "concerns", force: :cascade do |t|
    t.string "name"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.integer "rating"
    t.string "class"
    t.boolean "active"
    t.float "avg_concentration"
    t.string "usage"
  end

  create_table "product_ingredients", force: :cascade do |t|
    t.integer "ingredient_id"
    t.integer "product_id"
    t.index ["ingredient_id"], name: "index_product_ingredients_on_ingredient_id"
    t.index ["product_id"], name: "index_product_ingredients_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "brand"
    t.integer "rating"
    t.string "type"
  end

  add_foreign_key "concern_ingredients", "concerns"
  add_foreign_key "concern_ingredients", "ingredients"
  add_foreign_key "concern_products", "concerns"
  add_foreign_key "concern_products", "products"
  add_foreign_key "product_ingredients", "ingredients"
  add_foreign_key "product_ingredients", "products"
end
