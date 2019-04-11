class CreatePermissions < ActiveRecord::Migration[5.2]
  def change
    create_table :permissions do |t|

    t.integer  "user_id",                    limit: 4
    t.boolean  "daily_report",                         default: false
    t.boolean  "monthly_report",                       default: false
    t.boolean  "monthly_detail_report",                default: false
    t.boolean  "employee_current_status",              default: false
    t.datetime "created_at",                                           null: false
    t.datetime "updated_at",                                           null: false
    t.boolean  "create_and_view_eod",                  default: false
    t.boolean  "view_holiday",                         default: true
    t.boolean  "crud_holiday",                         default: false
    t.boolean  "apply_leave",                          default: false
    t.boolean  "listing_leave",                        default: false
    t.boolean  "eod_performance",                      default: false
    t.boolean  "list_projects",                        default: false
    t.boolean  "crud_projects",                        default: false
    t.boolean  "list_users",                           default: false
    t.boolean  "crud_users",                           default: false
    t.boolean  "delete_user",                          default: false
    t.boolean  "role_list",                            default: false
    t.boolean  "crud_role",                            default: false
    t.boolean  "update_permission",                    default: true
    t.boolean  "view_keywords",                        default: true
    t.boolean  "crud_keywords",                        default: false
    t.boolean  "list_project_type",                    default: false
    t.boolean  "crud_project_type",                    default: false
    t.boolean  "list_project_role",                    default: false
    t.boolean  "crud_project_role",                    default: false
    t.boolean  "view_checklist",                       default: false
    t.boolean  "crud_checklist",                       default: false
    t.boolean  "can_assign_task",                      default: false
    t.boolean  "list_lead_state",                      default: false
    t.boolean  "crud_lead_state",                      default: false
    t.boolean  "list_lead",                            default: false
    t.boolean  "crud_lead",                            default: false
    t.boolean  "enable_public_private_mode",           default: false
    end
    add_index "permissions", ["user_id"], name: "index_permissions_on_user_id", using: :btree
  end
end
