class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :descript
      t.integer :project_status
      t.float :total_hour_work
      t.string :project_url
      t.date :start_date
      t.references :project_type, foreign_key: true

      t.timestamps
    end
  end
end
