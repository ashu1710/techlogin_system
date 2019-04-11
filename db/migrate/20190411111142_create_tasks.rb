class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :task_name
      t.string :task_descrption
      t.string :task_status
      t.string :task_type
      t.string :assign_by
      t.date :assign_date
      t.references :project, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
