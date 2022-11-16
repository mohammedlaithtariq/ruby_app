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

ActiveRecord::Schema[7.0].define(version: 2022_11_14_123130) do
  create_table "clients", force: :cascade do |t|
    t.integer "employee_id"
    t.string "name"
    t.string "phone"
    t.string "address"
    t.string "barcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_clients_on_employee_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name", null: false
    t.string "address", null: false
    t.string "industry", null: false
    t.string "date", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address"], name: "index_companies_on_address"
    t.index ["date"], name: "index_companies_on_date"
    t.index ["industry"], name: "index_companies_on_industry"
    t.index ["name"], name: "index_companies_on_name"
  end

  create_table "employees", force: :cascade do |t|
    t.integer "company_id", null: false
    t.string "name", null: false
    t.string "age", null: false
    t.string "job_position", null: false
    t.string "phone", null: false
    t.string "address", null: false
    t.string "hobbies", null: false
    t.string "date", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address"], name: "index_employees_on_address"
    t.index ["age"], name: "index_employees_on_age"
    t.index ["company_id"], name: "index_employees_on_company_id"
    t.index ["date"], name: "index_employees_on_date"
    t.index ["hobbies"], name: "index_employees_on_hobbies"
    t.index ["job_position"], name: "index_employees_on_job_position"
    t.index ["name"], name: "index_employees_on_name"
    t.index ["phone"], name: "index_employees_on_phone"
  end

  create_table "jobs", force: :cascade do |t|
    t.integer "user_id"
    t.string "company"
    t.string "adress"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "email"
    t.string "agent_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "clients", "employees"
end
