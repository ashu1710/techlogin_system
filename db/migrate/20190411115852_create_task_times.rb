class CreateTaskTimes < ActiveRecord::Migration[5.2]
  def change
    create_table :task_times do |t|
      t.string :status
      t.string :total_seconds
      t.string :total_minutes
      t.references :user, foreign_key: true
      t.references :task, foreign_key: true
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
