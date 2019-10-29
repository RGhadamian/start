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

ActiveRecord::Schema.define(version: 2019_10_29_054747) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "providers", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.string "website"
    t.string "address"
    t.string "postcode"
    t.string "logo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "providers_reviews", id: false, force: :cascade do |t|
    t.bigint "provider_id"
    t.bigint "review_id"
    t.index ["provider_id"], name: "index_providers_reviews_on_provider_id"
    t.index ["review_id"], name: "index_providers_reviews_on_review_id"
  end

  create_table "providers_services", id: false, force: :cascade do |t|
    t.bigint "provider_id"
    t.bigint "service_id"
    t.index ["provider_id"], name: "index_providers_services_on_provider_id"
    t.index ["service_id"], name: "index_providers_services_on_service_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "timely"
    t.string "safe"
    t.string "clear_communication"
    t.string "value"
    t.string "recommend"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "services", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "service"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
