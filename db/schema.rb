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

ActiveRecord::Schema.define(version: 2019_04_12_065140) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string "content"
    t.bigint "user_id"
    t.bigint "task_id"
    t.bigint "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_comments_on_project_id"
    t.index ["task_id"], name: "index_comments_on_task_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "eod_performances", force: :cascade do |t|
    t.integer "eod_diff_in_sec"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_eod_performances_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "event_name"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "histories", force: :cascade do |t|
    t.string "description"
    t.bigint "user_id"
    t.bigint "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_histories_on_project_id"
    t.index ["user_id"], name: "index_histories_on_user_id"
  end

  create_table "holidays", force: :cascade do |t|
    t.string "name"
    t.date "holiday_date"
    t.string "holiday_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leaves", force: :cascade do |t|
    t.date "apply_date"
    t.string "reason"
    t.integer "leave_status_id"
    t.string "response"
    t.float "no_of_days"
    t.string "respond_by"
    t.integer "leave_type_id"
    t.string "leave_request"
    t.boolean "is_system_generated"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_leaves_on_user_id"
  end

  create_table "logs", force: :cascade do |t|
    t.string "ipaddress1"
    t.string "message"
    t.string "time_diff"
    t.integer "no_of_sec"
    t.boolean "system_generated"
    t.bigint "user_id"
    t.bigint "project_id"
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_logs_on_event_id"
    t.index ["project_id"], name: "index_logs_on_project_id"
    t.index ["user_id"], name: "index_logs_on_user_id"
  end

  create_table "permissions", force: :cascade do |t|
    t.integer "user_id"
    t.boolean "daily_report", default: false
    t.boolean "monthly_report", default: false
    t.boolean "monthly_detail_report", default: false
    t.boolean "employee_current_status", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "create_and_view_eod", default: false
    t.boolean "view_holiday", default: true
    t.boolean "crud_holiday", default: false
    t.boolean "apply_leave", default: false
    t.boolean "listing_leave", default: false
    t.boolean "eod_performance", default: false
    t.boolean "list_projects", default: false
    t.boolean "crud_projects", default: false
    t.boolean "list_users", default: false
    t.boolean "crud_users", default: false
    t.boolean "delete_user", default: false
    t.boolean "role_list", default: false
    t.boolean "crud_role", default: false
    t.boolean "update_permission", default: true
    t.boolean "view_keywords", default: true
    t.boolean "crud_keywords", default: false
    t.boolean "list_project_type", default: false
    t.boolean "crud_project_type", default: false
    t.boolean "list_project_role", default: false
    t.boolean "crud_project_role", default: false
    t.boolean "view_checklist", default: false
    t.boolean "crud_checklist", default: false
    t.boolean "can_assign_task", default: false
    t.boolean "list_lead_state", default: false
    t.boolean "crud_lead_state", default: false
    t.boolean "list_lead", default: false
    t.boolean "crud_lead", default: false
    t.boolean "enable_public_private_mode", default: false
    t.index ["user_id"], name: "index_permissions_on_user_id"
  end

  create_table "project_documents", force: :cascade do |t|
    t.string "file_name"
    t.bigint "project_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_project_documents_on_project_id"
    t.index ["user_id"], name: "index_project_documents_on_user_id"
  end

  create_table "project_hours", force: :cascade do |t|
    t.integer "hour"
    t.bigint "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_project_hours_on_project_id"
  end

  create_table "project_roles", force: :cascade do |t|
    t.string "name"
    t.boolean "receive_eod_mail", default: false
    t.boolean "can_view_eod", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_types", force: :cascade do |t|
    t.string "name"
    t.boolean "allow_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_users", force: :cascade do |t|
    t.integer "role"
    t.boolean "add_edit_assign_task"
    t.boolean "delete_assign_task"
    t.bigint "project_role_id"
    t.bigint "project_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_project_users_on_project_id"
    t.index ["project_role_id"], name: "index_project_users_on_project_role_id"
    t.index ["user_id"], name: "index_project_users_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.string "descript"
    t.integer "project_status"
    t.float "total_hour_work"
    t.string "project_url"
    t.date "start_date"
    t.bigint "project_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_type_id"], name: "index_projects_on_project_type_id"
  end

  create_table "salaries", force: :cascade do |t|
    t.float "total_leaves"
    t.integer "working_days"
    t.integer "salary"
    t.float "daily_salary"
    t.float "hour_salary"
    t.float "unpaid_leave"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_salaries_on_user_id"
  end

  create_table "task_statuses", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "task_times", force: :cascade do |t|
    t.string "status"
    t.string "total_seconds"
    t.string "total_minutes"
    t.bigint "user_id"
    t.bigint "task_id"
    t.bigint "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_task_times_on_project_id"
    t.index ["task_id"], name: "index_task_times_on_task_id"
    t.index ["user_id"], name: "index_task_times_on_user_id"
  end

  create_table "task_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "task_name"
    t.string "task_descrption"
    t.string "task_status"
    t.string "task_type"
    t.string "assign_by"
    t.date "assign_date"
    t.bigint "project_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_tasks_on_project_id"
    t.index ["user_id"], name: "index_tasks_on_user_id"
  end

  create_table "user_roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.string "in_time"
    t.date "dob"
    t.string "salary"
    t.integer "sl"
    t.integer "cl"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "joindate"
    t.boolean "login"
    t.integer "working_hours"
    t.bigint "user_role_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["user_role_id"], name: "index_users_on_user_role_id"
  end

  add_foreign_key "comments", "projects"
  add_foreign_key "comments", "tasks"
  add_foreign_key "comments", "users"
  add_foreign_key "eod_performances", "users"
  add_foreign_key "events", "users"
  add_foreign_key "histories", "projects"
  add_foreign_key "histories", "users"
  add_foreign_key "leaves", "users"
  add_foreign_key "logs", "events"
  add_foreign_key "logs", "projects"
  add_foreign_key "logs", "users"
  add_foreign_key "project_documents", "projects"
  add_foreign_key "project_documents", "users"
  add_foreign_key "project_hours", "projects"
  add_foreign_key "project_users", "project_roles"
  add_foreign_key "project_users", "projects"
  add_foreign_key "project_users", "users"
  add_foreign_key "projects", "project_types"
  add_foreign_key "salaries", "users"
  add_foreign_key "task_times", "projects"
  add_foreign_key "task_times", "tasks"
  add_foreign_key "task_times", "users"
  add_foreign_key "tasks", "projects"
  add_foreign_key "tasks", "users"
  add_foreign_key "users", "user_roles"
end
