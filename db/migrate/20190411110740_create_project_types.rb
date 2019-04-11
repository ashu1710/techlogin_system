class CreateProjectTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :project_types do |t|
      t.string :name
      t.boolean :allow_time

      t.timestamps
    end
  end
end
