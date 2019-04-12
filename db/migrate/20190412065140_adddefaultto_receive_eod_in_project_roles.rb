class AdddefaulttoReceiveEodInProjectRoles < ActiveRecord::Migration[5.2]
  def change
    change_column :project_roles, :can_view_eod, :boolean, default: false
    change_column :project_roles, :receive_eod_mail, :boolean, default: false
  end
end
