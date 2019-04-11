class CreateTaskStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :task_statuses do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
