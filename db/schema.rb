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

ActiveRecord::Schema.define(version: 2018_10_12_184538) do

  create_table "addresses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Address_type"
    t.string "Status"
    t.string "Entity"
    t.string "Number_street"
    t.integer "Suite_or_apartment"
    t.string "City"
    t.string "Zip_or_postal_code"
    t.string "Country"
    t.string "Notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "batteries", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "building_id"
    t.bigint "employee_id"
    t.string "Type"
    t.string "Status"
    t.date "Activation_date"
    t.date "Last_inspection_date"
    t.string "Operation_certificate"
    t.string "Information"
    t.string "Notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_batteries_on_building_id"
    t.index ["employee_id"], name: "index_batteries_on_employee_id"
  end

  create_table "building_details", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "building_id"
    t.string "Key"
    t.string "Value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_building_details_on_building_id"
  end

  create_table "buildings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "customer_id"
    t.bigint "address_id"
    t.string "Building_address"
    t.string "Admin_full_name"
    t.string "Admin_phone_number"
    t.string "Admin_email"
    t.string "Building_technical_contact_full_name"
    t.string "Building_technical_contact_phone_number"
    t.string "Building_technical_contact_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_buildings_on_address_id"
    t.index ["customer_id"], name: "index_buildings_on_customer_id"
  end

  create_table "columns", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "battery_id"
    t.string "Type"
    t.integer "Number_of_level"
    t.string "Status"
    t.string "Information"
    t.string "Notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["battery_id"], name: "index_columns_on_battery_id"
  end

  create_table "customers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "address_id"
    t.date "Client_creation_Date"
    t.string "Company_name"
    t.string "Head_office_address"
    t.string "Company_contact_phone_number"
    t.string "Company_contact_email"
    t.string "Company_description"
    t.string "Technical_service_contact_full_name"
    t.string "Technical_service_contact_phone_number"
    t.string "Technical_service_contact_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_customers_on_address_id"
    t.index ["user_id"], name: "index_customers_on_user_id"
  end

  create_table "elevators", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "column_id"
    t.string "Serial_number"
    t.string "Model"
    t.string "Type"
    t.string "Status"
    t.date "Activation_date"
    t.date "Last_inspection_date"
    t.string "Inspection_certificate"
    t.string "Information"
    t.string "Notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["column_id"], name: "index_elevators_on_column_id"
  end

  create_table "employees", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.string "title"
    t.string "email"
  end

  create_table "leads", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "Company_contact_full_name"
    t.string "Company_name"
    t.string "Company_contact_email"
    t.string "Company_contact_phone_number"
    t.string "Building_project_name"
    t.string "Project_description"
    t.text "Message"
    t.binary "File_attached"
    t.date "Date_of_contact_request"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "Department"
  end

  create_table "quotes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.boolean "Building_Residential"
    t.boolean "Building_Commercial"
    t.boolean "Building_Corporate"
    t.boolean "Building_Hybride"
    t.integer "Floors"
    t.integer "Basement"
    t.integer "Appartment"
    t.integer "Shops"
    t.integer "Parkings"
    t.integer "Elevators"
    t.integer "Companies"
    t.integer "Occupants"
    t.integer "ActiveHours"
    t.integer "TotalElevators"
    t.string "Quality"
    t.integer "TotalPrice"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "companyname"
    t.string "contactemail"
    t.string "Company_name"
    t.string "Contact_email"
    t.string "quote_date"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "batteries", "buildings"
  add_foreign_key "batteries", "employees"
  add_foreign_key "building_details", "buildings"
  add_foreign_key "buildings", "addresses"
  add_foreign_key "buildings", "customers"
  add_foreign_key "columns", "batteries"
  add_foreign_key "customers", "addresses"
  add_foreign_key "customers", "users"
  add_foreign_key "elevators", "columns"
end
