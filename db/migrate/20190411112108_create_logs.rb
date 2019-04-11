class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      t.string :ipaddress1
      t.string :message
      t.string :time_diff
      t.integer :no_of_sec
      t.boolean :system_generated
      t.references :user, foreign_key: true
      t.references :project, foreign_key: true
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
