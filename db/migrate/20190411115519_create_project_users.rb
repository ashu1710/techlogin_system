class CreateProjectUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :project_users do |t|
      t.integer :role
      t.boolean :add_edit_assign_task
      t.boolean :delete_assign_task
      t.references :project_role, foreign_key: true
      t.references :project, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
