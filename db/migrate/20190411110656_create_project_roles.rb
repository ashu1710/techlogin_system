class CreateProjectRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :project_roles do |t|
      t.string :name
      t.boolean :receive_eod_mail
      t.boolean :can_view_eod

      t.timestamps
    end
  end
end
