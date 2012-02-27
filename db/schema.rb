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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120227122149) do

  create_table "aspirants", :force => true do |t|
    t.integer  "aspirant_type"
    t.datetime "start_study_date"
    t.datetime "maybe_finish_date"
    t.datetime "finish_study_date"
    t.integer  "scientman_id"
    t.integer  "study_form"
    t.boolean  "protect_status"
    t.datetime "protect_data"
    t.boolean  "payment"
    t.integer  "speciality_id"
    t.integer  "skip"
    t.datetime "start_date"
    t.datetime "finish_date"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "work_title"
    t.date     "scientman_day"
  end

  create_table "chairs", :force => true do |t|
    t.string   "name"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "marks", :force => true do |t|
    t.integer  "value"
    t.integer  "aspirant_id"
    t.integer  "subject_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "value_type"
    t.date     "day_exam"
  end

  create_table "people", :force => true do |t|
    t.string   "first_name"
    t.string   "second_name"
    t.string   "last_name"
    t.datetime "birthday"
    t.string   "telephone"
    t.string   "email"
    t.boolean  "male"
    t.integer  "status"
    t.integer  "scientman_id"
    t.integer  "aspirant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "scientmen", :force => true do |t|
    t.string   "grade"
    t.string   "job_title"
    t.string   "rank"
    t.datetime "start_date"
    t.datetime "finish_date"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skippings", :force => true do |t|
    t.integer  "aspirant_id"
    t.date     "start"
    t.date     "finish"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "specialities", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "key_specialiti"
    t.integer  "chairs_id"
    t.integer  "chair_id"
  end

  create_table "subjects", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subjects_specialities", :id => false, :force => true do |t|
    t.integer  "subject_id"
    t.integer  "speciality_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
