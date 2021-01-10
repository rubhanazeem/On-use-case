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

ActiveRecord::Schema.define(version: 2021_01_09_193506) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_stat_statements"
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "accounts", force: :cascade do |t|
    t.string "Id"
    t.string "E_Shop_Dealer__c"
    t.string "Name"
    t.string "POS_Street__c"
    t.string "POS_City__c"
    t.string "POS_ZIP__c"
    t.string "POS_Country__c"
    t.string "POS_State__c"
    t.string "POS_Phone__c"
    t.float "Dealer_Latitude__c"
    t.float "Dealer_Longitude__c"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Id"], name: "index_accounts_on_Id"
  end

end
